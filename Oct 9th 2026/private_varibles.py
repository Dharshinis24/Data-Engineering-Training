class Employee:
    __bonus = 10000

e1 = Employee()
#print(e1.__bonus) #error : AttributeError: 'Employee' object has no attribute '__bonus'

print(e1._Employee__bonus) # name mangling