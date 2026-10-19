booking_amounts = [
 5000, 3500, 7500, 6000,
 4000, 7000, 3000, 10000
]

#11
print("Total Booking amount: ",sum(booking_amounts))

#12
print("Average Booking amount: ",sum(booking_amounts)/len(booking_amounts))

#13
print("Highest Booking amount: ",max(booking_amounts))
print("Lowest Booking amount: ",min(booking_amounts))

#14
print("Amount Greater than 5000")
for amount in booking_amounts:
    if amount > 5000:
        print(amount)

#15
print("Sorted by amount in descending order")
amount_sort = sorted(booking_amounts,reverse=True)
print(amount_sort)

cities = [
 "Hyderabad",
 "Mumbai",
 "Pune",
 "Hyderabad",
 "Delhi",
 "Mumbai"
]

#16
unique_city = set(cities)
print("Unique city: ",unique_city)

#17
unique_city.add("Chennai")
print(unique_city)

#18
print("Number of unique cities: ",len(unique_city))

#19
event = (101,"Birthday Party","ABC hall",25)
event_id, event_name,venue,capacity = event

#20
registration = {
    'registration_id':18,
    'attendee_name':'Dharshini',
    'city':'Erode',
    'tickets':2,
    'status':'Pending',
    'amount':1500
}

#22
registration['status'] = 'Confirmed'

#23
registration['tickets'] += 3

#24
registration['email'] = 'dharshinis369@gmail.com'

#25
for key,values in registration.items():
    print(f"{key}: {values}")

