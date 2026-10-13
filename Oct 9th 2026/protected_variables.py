class Employee:
    _department = "IT"
    #protected variable - accessed inside the class and inside it's child class

e1 = Employee()
print(e1._department)