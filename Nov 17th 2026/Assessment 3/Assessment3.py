cat > airport_baggage_dag.py <<'EOF'
from airflow import DAG
from airflow.providers.standard.operators.python import PythonOperator
from datetime import datetime
from airflow.sdk import get_current_context
import csv

def load_baggage():
    with open('/opt/airflow/dags/airport_baggage.csv', newline='') as file:
        records = list(csv.DictReader(file))
    print('Baggage records loaded:', len(records))
    return records

def identify_review_bags():
    ti = get_current_context()['ti']
    baggage_records = ti.xcom_pull(task_ids='load_baggage')
    review_bags = []
    for record in baggage_records:
        weight_kg = int(record['weight_kg'])
        if record['screening_status'] == 'Review' or weight_kg > 23:
            review_bags.append(record['bag_id'])
    print('Bags requiring manual review:', review_bags)
    return review_bags

def calculate_total_weight():
    ti = get_current_context()['ti']
    baggage_records = ti.xcom_pull(task_ids='load_baggage')
    sum_of_weight_kg = 0
    for record in baggage_records:
        weight_kg = int(record['weight_kg'])
        sum_of_weight_kg += weight_kg
    print('Sum of weight kg:', sum_of_weight_kg)
    return sum_of_weight_kg

def generate_report():
    ti = get_current_context()['ti']
    baggage = ti.xcom_pull(task_ids='load_baggage')
    print("The number of bags:",len(baggage))
    review_bags = ti.xcom_pull(task_ids = 'identify_review_bags')
    print("Review needed bags are:",review_bags)
    total_baggage_weight = ti.xcom_pull(task_ids = 'calculate_total_weight')
    print("Total weight needed:",total_baggage_weight)

with DAG(
    dag_id='airport_baggage_pipeline',
    start_date=datetime(2026, 11, 16),
    schedule = None,
    catchup =  False
) as dag:
    load_baggage = PythonOperator(
        task_id='load_baggage',
        python_callable=load_baggage
    )
    identify_review_bags = PythonOperator(
        task_id='identify_review_bags',
        python_callable=identify_review_bags
    )
    calculate_total_weight = PythonOperator(
        task_id='calculate_total_weight',
        python_callable=calculate_total_weight
    )
    generate_report = PythonOperator(
        task_id = 'generate_report',
        python_callable=generate_report
    )

    load_baggage >> [identify_review_bags,calculate_total_weight]
    [identify_review_bags,calculate_total_weight] >> generate_report

EOF
