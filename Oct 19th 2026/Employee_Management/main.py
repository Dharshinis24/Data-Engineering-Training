from fastapi import FastAPI,HTTPException
from pydantic import BaseModel

app = FastAPI()

#exercise 1
class Employee(BaseModel):
    id:int
    name:str
    department:str
    designation:str
    salary:float
    city:str

employees = []

#exercise 2

@app.post("/employees")
def add_employees(employee:Employee):
    employees.append(employee)
    return{
        "message":"Employee added successfully",
        "Employee": employee
    }

#excersie 3
@app.get("/employees")
def get_employees():
    if len(employees) > 0:
        return employees
    raise HTTPException(status_code=404, detail="Employee not found")

#exercise 4
@app.get("/employees/{employee_id}")
def get_employee_by_id(employee_id: int):
    for emp in employees:
        if emp.id == employee_id:
            return emp
    raise HTTPException(status_code=404, detail=f"Employee with {employee_id} not found")

#exercise 5
@app.put("/employees/{employee_id}")
def update_employee(employee_id:int,employee: Employee):
    for index,emp in enumerate(employees):
        if emp.id == employee_id:
            employees[index] = employee
            return{
                "message":"Employee updated successfully",
                "updated": employee
            }
    raise HTTPException(status_code=404, detail="Employee not found")

#excersie 6
@app.delete("/employees/{employee_id}")
def delete_employee(employee_id: int):
    for index,emp in enumerate(employees):
        if emp.id == employee_id:
            deleted = employees.pop(index)
            return {
                "message":"Employee deleted successfully",
                "Employee": deleted
            }
    raise HTTPException(status_code=404, detail="Employee not found")


