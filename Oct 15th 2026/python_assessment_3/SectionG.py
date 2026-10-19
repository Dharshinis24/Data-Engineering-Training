#61
import json
from operator import index

with open("staff.json",'r') as file:
    data = json.load(file)

    #62
    print("Data type of the returned object is ",type(data))

    #63
    print("Staff names")
    for staff in data:
        print(staff["name"])

    #64
    print("Employees from operations")
    for staff in data:
        if staff['department'] == 'Operations':
            print(staff)

    #65
    print("Salary above 75000")
    for staff in data:
        if staff['salary']>75000:
            print(staff)

    #66
    print("Employees with python in their list")
    for staff in data:
        if 'Python' in staff['skills']:
            print(staff)

    #67
    for staff in data:
        print(staff['name'],"\t",staff['performance']['rating'],"\t",staff['performance']['events_handled'])

    #68
    print("Rating above 4.5")
    for staff in data:
        if staff['performance']['rating']>4.5:
            print(staff)

    #69
    skills = []
    for staff in data:
        skills.extend(staff['skills'])
    print("Skills are ",skills)

    #70
    unique_skills = set(skills)
    print("Unique skills are ",unique_skills)

    #71
    print("Sorting by salary descending")
    salary_sorted = sorted(data,key=lambda x:x['salary'],reverse=True)
    for staff in salary_sorted:
        print(staff)

    #72
    print("Performance wise sorting")
    rating_sorted = sorted(data,key=lambda x:x['performance']['rating'],reverse=True)
    for staff in rating_sorted:
        print(staff)

    #73
    print("Adding pandas to 503")
    for staff in data:
        if staff['staff_id']==503:
            staff['skills'].append("Pandas")
            print(staff)

    #74
    with open("staff_updated.json",'w') as file:
        file.write(json.dumps(data,indent=4))