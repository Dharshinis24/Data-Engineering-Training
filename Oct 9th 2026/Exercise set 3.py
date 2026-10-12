import json

projects = [
{
"project_id": 101,
"project_name": "Data Migration",
"department": "IT",
"budget": 450000,
"technologies": ["Python", "SQL", "Azure"],
"team": [
{
"name": "Vikram",
"role": "Engineer",
"experience": 4
},
{
"name": "Meera",
"role": "Analyst",
"experience": 3
}
]
},
{
"project_id": 102,
"project_name": "Customer Analytics",
"department": "Analytics",
"budget": 300000,
"technologies": ["Python", "Pandas", "Power BI"],
"team": [
{
"name": "Karan",
"role": "Data Analyst",
"experience": 5
},
{
"name": "Zoya",
"role": "Developer",
"experience": 2
}

]
},
{
"project_id": 103,
"project_name": "Cloud Modernization",
"department": "Cloud",
"budget": 600000,
"technologies": ["Azure", "Docker", "Python"],
"team": [
{
"name": "Naveen",
"role": "Cloud Engineer",
"experience": 6
},
{
"name": "Isha",
"role": "Engineer",
"experience": 4
}
]
}
]

with open("projects.json","w")as file:
    json.dump(projects,file,indent=4)
    file.close()


#1
with open("projects.json","r")as file:
    proj = json.load(file)

    #2
    print("Type of returned object:",type(proj))

    #3
    print("Project names:")
    for project in proj:
        print(project.get("project_name"))

    #4
    print("project above 4,00,000")
    for project in proj:
        if project.get("budget")>400000:
            print(project)

    #5
    print("Projects using python")
    for project in proj:
        if "Python" in project.get("technologies"):
            print(project)

    #6
    total_budget = 0
    for project in proj:
        total_budget += project.get("budget")
    print("Total budget of all projects:",total_budget)

    #7
    technologies = []
    for project in proj:
        tech = project.get("technologies")
        for item in tech:
            technologies.append(item)
    print("technology:", technologies)

    #8
    technologies = set()
    for project in proj:
        tech = project.get("technologies")
        for item in tech:
            technologies.add(item)
    print("Unique technology:",technologies)

    #9
    for project in proj:
        team = project.get("team")
        for emp in team:
            print("Name:",emp.get("name"))
            print("Role:",emp.get("role"))
            print("Experience:",emp.get("experience"))

    #10
    print("Experience above 3 years")
    for project in proj:
        team = project.get("team")
        for emp in team:
            if emp.get("experience") > 3:
                print("Name:", emp.get("name"))
                print("Role:", emp.get("role"))
                print("Experience:", emp.get("experience"))

    #11
    total_memeber = 0
    for project in proj:
        team = project.get("team")
        total_memeber += len(team)
    print("Total number of team members:",total_memeber)

    #12
    budget_sort = sorted(proj,key=lambda x:x.get("budget"),reverse=True)
    print("Order by budget from high to low")
    for project in budget_sort:
        print(project)

    #13
    projectname_sort = sorted(proj, key=lambda x: x.get("project_name"))
    print("alphabetically by project name")
    for project in projectname_sort:
        print(project)

    #14
    print("Memebrs sorted by experience")
    for project in proj:
        print(project.get("project_id"),end=" ")
        print(project.get("project_name"),end=" ")
        print(project.get("department"),end=" ")
        print(project.get("budget"),end=" ")
        print(project.get("technologies"),end=" ")
        team = project.get("team")
        team.sort(key=lambda x:x.get("experience"))
        print(team)

