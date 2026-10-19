#section A - python Basics

#1
attendee_name = input("Enter Attendee Name: ")
no_of_tickets = int(input("Enter No of Tickets: "))
ticket_price = float(input("Enter Ticket Price: "))

#2
total_booking_amount = no_of_tickets * ticket_price

#3
if total_booking_amount >= 10000:
    discount = (total_booking_amount * 10)/100
else:
    discount = (total_booking_amount * 5)/100

#4
print(f"Total Booking Amount: {total_booking_amount}")
print(f"Discount: {discount}")
print(f"Final Booking Amount: {total_booking_amount - discount}")

#5
event_capacity = int(input("Enter Event Capacity: "))
participants = list(map(str, input("Enter Participants: ").split()))

#6
if len(participants) == event_capacity:
    print("Full")
elif len(participants) < event_capacity:
    print("Seats Available")
else:
    print("Invalid data")

#7
print("For loop number from 1 to 15")
for i in range(1,16):
    print(i)

#8
print("Divisible by 3")
for i in range(1,16):
    if i%3==0:
        print(i)

#9
print("count down from 10 to 1 using while loop")
count = 10
while count >0:
    print(count)
    count -= 1

#10
print("continue example - even numbers from 1 to 15")
num = 0
while num <= 15:
    num += 1
    if num % 2 != 0:
        continue
    print(num)
print("Break example - when number beacome 3")
for num in range(1,16):
    print(num)
    if num == 3:
        break

