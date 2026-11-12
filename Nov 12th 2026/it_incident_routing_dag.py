cat > it_incident_routing_dag.py << 'EOF'
from airflow import DAG
from airflow.providers.standard.operators.python import PythonOperator, BranchPythonOperator
from airflow.operators.python import get_current_context
from datetime import datetime, timedelta

def load_incident():
    incident = {
        "ticket_id": "INC-402",
        "service": "Email",
        "severity": "High",
        "reported_by": "Operations"
    }
    return incident

def choose_response():
    ti = get_current_context()['ti']
    incident = ti.xcom_pull(task_ids='load_incident')
    change_severity = incident['severity']
    if change_severity in ['High', 'Critical']:
        return "urgent_response"
    else:
        return "standard_response"

def urgent_response():
    ti = get_current_context()['ti']
    if ti.try_number == 1:
        raise Exception("Simulated temporary failure")

    print("URGENT: Incident escalated to the technical team.")


def standard_response():
    print("Incident assigned to the standard service desk team.")

def write_audit():
    ti = get_current_context()['ti']
    incident = ti.xcom_pull(task_ids='load_incident')

    print("Incident ID:", incident['ticket_id'])
    print("Incident processing completed.")


with DAG(
    dag_id = "it_incident_routing_dag",
    start_date=datetime(2026, 11, 11),
    schedule = None,
    catchup = False
) as dag:

    load = PythonOperator(
        task_id='load_incident', python_callable=load_incident
    )
    choose = BranchPythonOperator(
        task_id='choose_response',
        python_callable=choose_response
    )
    urgent = PythonOperator(
        task_id='urgent_response',
        python_callable=urgent_response,
        retries=1,
        retry_delay=timedelta(seconds=10)
    )
    standard = PythonOperator(
        task_id='standard_response', python_callable=standard_response
    )
    write = PythonOperator(
        task_id='write_audit',
        python_callable=write_audit,
        trigger_rule='none_failed_min_one_success'
    )

    load >> choose
    choose >> [urgent,standard]
    [urgent,standard] >> write

EOF
