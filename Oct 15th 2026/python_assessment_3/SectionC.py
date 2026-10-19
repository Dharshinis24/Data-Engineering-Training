import csv

with open("registrations.csv",'r') as file:
    content = csv.reader(file)
    data = list(content)
    file.close()

#26
def calculate_booking(ticket_price, tickets):
    return ticket_price * tickets

#27
def applying_discount(amount):
    if amount > 10000:
        return (amount - (amount * 10)/100)
    else:
        return (amount - (amount * 5)/100)

#28
def checking_status(status):
    if status == 'Confirmed':
        return True
    return False

#29
def calculating_total(booking_amount):
    return sum(booking_amount)

#30
print("increase amount by 10%")
print(list(map(lambda x : float(x[-1]) + ((float(x[-1])*10)/100),data[1:])))

#31
print("Amount greater than 6000")
print(list(filter(lambda x:float(x[-1])>6000,data[1:])))

#32
print("Confirmed registrations")
confirmed_registration = list(filter(lambda x: x[-2]=='Confirmed',data[1:]))
for reg in confirmed_registration:
    print(reg)

#33
print("Attendee cities")
cities = list(map(lambda x: x[3],data[1:]))
print(cities)

#34
print("Unique cities")
set_cities = set(map(lambda x: x[3],data[1:]))
print(set_cities)

#35
print("Sort by amount")
amount_sort = sorted(data[1:],key= lambda x:float(x[-1]))
for reg in amount_sort:
    print(reg)


