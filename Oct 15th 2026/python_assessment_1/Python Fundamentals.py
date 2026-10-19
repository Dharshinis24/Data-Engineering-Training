#1
weight = float(input("Enter shipment weight: "))
cost = float(input("Enter cost: "))

#2
cost_per_kg = weight * cost
print("cost per kg: ",cost_per_kg)

#3
if weight > 20:
    print("Heavy")
elif weight >= 10 and weight <= 20:
    print("Medium")
else:
    print("Light")

#4
print("For loop for displaying shipment from 1 to 20")
for i in range(1,21):
    print(i)

#5
print("Loop for even shipments")
for i in range(1,21):
    if i%2==0:
        print(i)

#6
print("While loop for 5 processing attempts")
attempt = 0
while attempt  <= 5:
    print(attempt)
    attempt += 1