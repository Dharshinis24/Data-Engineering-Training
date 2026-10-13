class Employee:
    def __init__(self,name,salary):
        self.name = name
        self.salary = salary

    def display(self):
        print(f"Name: {self.name}, Salary: {self.salary}")

class Developer(Employee):
    def write_code(self):
        print("Developer is writing code")

developer = Developer("Dharshini",40000)
developer.display()
developer.write_code()