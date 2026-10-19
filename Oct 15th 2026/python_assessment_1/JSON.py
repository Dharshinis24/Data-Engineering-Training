import json

#24
with open("employees.json",'r') as file:
    data = json.load(file)
    file.close()

#25
print("Employee names")
for employee in data:
    print(employee['name'])

#26
print("salary above 75000")
for employee in data:
    if employee['salary'] > 75000:
        print(employee)

#27
print("Pyhton knowing employee")
for employee in data:
    if 'Python' in employee['skills']:
        print(employee)

#28
print("Employee name and performance rating:")
for employee in data:
    print(employee['name'],"\t",employee['performance']['rating'])

#29
print("Employee above 4.5 ratings")
for employee in data:
    if employee['performance']['rating'] > 4.5:
        print(employee)

#30
print("sorted by rating descending")
rating_sorted = sorted(data,key=lambda x:x['performance']['rating'],reverse=True)
for employee in rating_sorted:
    print(employee)

#31
print("Adding Java in skills to 303")
for employee in data:
    if employee['employee_id']==303:
        employee['skills'].append("Java")

#32
with open("employees.json",'w') as writefile:
    json.dump(data,writefile,indent=4)
    print("Employee file updated")
    writefile.close()
