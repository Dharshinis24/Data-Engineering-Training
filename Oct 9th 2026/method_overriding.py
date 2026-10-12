

class Employees:
    def work(self):
        print("Employee is working")

class Developers(Employees):
    def work(self):
        print("Developer is writing code")

e = Employees()
d = Developers()

e.work()
d.work()