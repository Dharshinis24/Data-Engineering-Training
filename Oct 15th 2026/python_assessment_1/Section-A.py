#Section A - Python Basics

#1
product_name = input("Enter Product Name: ")
unit_price = float(input("Enter Price: "))
quantity = int(input("Enter Quantity: "))

#2
total_amount = unit_price * quantity

#3
if total_amount >= 50000:
    discount_amount = (total_amount * 10)/100
else:
    discount_amount = (total_amount * 5)/100

#4
print(f"Original Amount: {total_amount}\nDiscount Amount: {discount_amount}\nFinal Amount: {total_amount - discount_amount}")

#5
stock = int(input("Enter Stock: "))
if stock > 20:
    print("High Stock")
elif (stock >= 1 and stock <= 20):
    print("Low Stock")
else:
    print("Out of Stock")

#6
print("Numbers from 1 to 10 using for loop")
for i in range(1,11):
    print(i)

#7
print("Stock reduction from 5 to 0 using while loop")
while stock >= 0:
    print("Stock from ",stock)
    stock -= 1

#8
print("Continue at 5")
for i in range(1,11):
    if i == 5:
        continue
    else:
        print(i)

#9
print("Break at 8")
for i in range(1,11):
    if i == 8:
        break
    else:
        print(i)
