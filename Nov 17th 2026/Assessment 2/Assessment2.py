cat > atm_cash_dag.py <<'EOF'
from airflow import DAG
from airflow.providers.standard.operators.python import PythonOperator
from datetime import datetime
from airflow.sdk import get_current_context
import csv

def load_atms():
    with open('/opt/airflow/dags/atm_cash.csv', newline='') as file:
        records = list(csv.DictReader(file))
    print('ATM records loaded:', len(records))
    return records

def identify_low_cash():
    ti = get_current_context()['ti']
    records = ti.xcom_pull(task_ids='load_atms')
    low_cash_atm = []
    for user in records:
        cash_available = int(user['cash_available'])
        daily_demand = int(user['daily_demand'])
        if cash_available < daily_demand:
            low_cash_atm.append(user['atm_id'])
    print('Low-cash ATM IDs:', low_cash_atm)
    return low_cash_atm

def calculate_total_cash():
    ti = get_current_context()['ti']
    records = ti.xcom_pull(task_ids='load_atms')
    sum_of_cash_available = 0
    for user in records:
        cash_available = int(user['cash_available'])
        sum_of_cash_available += cash_available
    print('Total cash available:', sum_of_cash_available)
    return sum_of_cash_available

def generate_report():
    ti = get_current_context()['ti']
    records = ti.xcom_pull(task_ids='load_atms')
    print("The number of ATM are:",len(records))
    low_cash_atm = ti.xcom_pull(task_ids='identify_low_cash')
    print("Low-cash ATM IDs:",low_cash_atm)
    sum_of_cash_available = ti.xcom_pull(task_ids='calculate_total_cash')
    print("Total cash available:", sum_of_cash_available)

with DAG(
    dag_id='atm_cash_pipeline',
    start_date=datetime(2026, 11, 16),
    schedule = None,
    catchup = False
) as dag:
    load_atm = PythonOperator(
        task_id='load_atms',
        python_callable=load_atms
    )
    identify_low_cash = PythonOperator(
        task_id='identify_low_cash',
        python_callable=identify_low_cash
    )
    calculate_total_cash = PythonOperator(
        task_id='calculate_total_cash',
        python_callable=calculate_total_cash
    )
    generate_report = PythonOperator(
        task_id = 'generate_report',
        python_callable=generate_report
    )

    load_atm >> [identify_low_cash, calculate_total_cash]
    [identify_low_cash, calculate_total_cash] >> generate_report

EOF
