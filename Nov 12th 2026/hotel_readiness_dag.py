cat > hotel_readiness_dag.py <<'EOF'
from airflow import DAG
from airflow.providers.standard.operators.python import PythonOperator
from airflow.operators.python import get_current_context
from datetime import datetime

def load_rooms():
    rooms = [
        {"room": 101, "status": "Ready", "cleaning_min": 0},
        {"room": 102, "status": "Cleaning", "cleaning_min": 25},
        {"room": 103, "status": "Ready", "cleaning_min": 0},
        {"room": 104, "status": "Cleaning", "cleaning_min": 40},
        {"room": 105, "status": "Cleaning", "cleaning_min": 30}
    ]
    return rooms

def find_rooms_to_clean():
    ti = get_current_context()["ti"]
    rooms = ti.xcom_pull(task_ids="load_rooms")
    cleaning_rooms = [
        room["room"] for room in rooms if room["status"] == "Cleaning"
    ]
    return cleaning_rooms

def calculate_cleaning_minutes():
    ti = get_current_context()["ti"]
    rooms = ti.xcom_pull(task_ids="load_rooms")
    total_minutes = sum(
        room["cleaning_min"] for room in rooms if room["status"] == "Cleaning"
    )
    return total_minutes

def generate_housekeeping_report():
    ti = get_current_context()["ti"]
    cleaning_rooms = ti.xcom_pull(
        task_ids="find_rooms_to_clean"
    )
    total_minutes = ti.xcom_pull(
        task_ids="calculate_cleaning_minutes"
    )

    print("===== HOUSEKEEPING REPORT =====")
    print("Rooms needing cleaning:", cleaning_rooms)
    print("Total cleaning time:", total_minutes, "minutes")
    print("================================")


with DAG(
    dag_id="hotel_readiness_dag",
    start_date=datetime(2026, 11, 12),
    schedule=None,
    catchup=False
) as dag:

    load = PythonOperator(
        task_id="load_rooms",
        python_callable=load_rooms
    )

    find = PythonOperator(
        task_id="find_rooms_to_clean",
        python_callable=find_rooms_to_clean
    )

    calculate = PythonOperator(
        task_id="calculate_cleaning_minutes",
        python_callable=calculate_cleaning_minutes
    )

    report = PythonOperator(
        task_id="generate_housekeeping_report",
        python_callable=generate_housekeeping_report
    )

    load >> [find, calculate]
    [find, calculate] >> report
EOF