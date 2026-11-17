cat > factory_quality_dag.py <<'EOF'
from airflow import DAG
from airflow.providers.standard.operators.python import PythonOperator
from datetime import datetime
from airflow.sdk import get_current_context
import csv

def load_batches():
    with open("/opt/airflow/dags/factory_batches.csv", newline="") as file:
        rows = list(csv.DictReader(file))
    print("Batches loaded:", len(rows))
    return rows

def check_quality():
    ti = get_current_context()['ti']
    batches = ti.xcom_pull(task_ids='load_batches')
    above_5_percent = []
    for batch in batches:
        units_produced = int(batch['units_produced'])
        defective_units = int(batch['defective_units'])
        value_per_unit = int(batch['value_per_unit'])
        five_percent_unit_produced = (units_produced* 5)/100
        if defective_units > five_percent_unit_produced:
            above_5_percent.append(batch['batch_id'])
    print("Batches requiring quality review:", above_5_percent)
    return above_5_percent

def calculate_value():
    ti = get_current_context()['ti']
    batches = ti.xcom_pull(task_ids='load_batches')
    total_value = 0
    for batch in batches:
        units_produced = int(batch['units_produced'])
        defective_units = int(batch['defective_units'])
        value_per_unit = int(batch['value_per_unit'])
        total_value  += units_produced * value_per_unit
    print("Total production value:", total_value)
    return total_value

def generate_report():
    ti = get_current_context()['ti']
    batches = ti.xcom_pull(task_ids='load_batches')
    print("Total number of batches:", len(batches))
    quality_check = ti.xcom_pull(task_ids='check_quality')
    print("Batches requiring quality review:", quality_check)
    total_production_value = ti.xcom_pull(task_ids='calculate_value')
    print("Total production value:", total_production_value)

with DAG(
    dag_id = "factory_quality_pipeline",
    start_date = datetime(2026, 11, 16),
    schedule = None,
    catchup = False,
) as dag:
    load = PythonOperator(
        task_id = "load_batches",
        python_callable = load_batches
    )
    check = PythonOperator(
        task_id = "check_quality",
        python_callable = check_quality
    )
    calculate = PythonOperator(
        task_id = "calculate_value",
        python_callable = calculate_value
    )
    generate = PythonOperator(
        task_id = "generate_report",
        python_callable = generate_report
    )

    load >> [check,calculate]
    [check,calculate] >> generate

EOF



