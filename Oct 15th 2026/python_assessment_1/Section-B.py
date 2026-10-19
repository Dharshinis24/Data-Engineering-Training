#section B - List,Tuple,Sets and Dictionaries

sales = [65000, 4500, 36000, 12000, 18000, 72000, 9000]

#10
print("Total Sales: ",sum(sales))

#11
print(f"Highest Sale: {max(sales)}\nLowest Sale: {min(sales)}")

#12
print("Sales greater than 20000")
for sale in sales:
    if sale > 20000:
        print(sale)

#13
print("Sales from high to low")
sales.sort(reverse=True)
print(sales)

#14
cities = [
 "Hyderabad",
 "Mumbai",
 "Delhi",
 "Hyderabad",
 "Pune",
 "Mumbai"
]
set_of_cities = set(cities)
print("Unique cities are: ",set_of_cities)

#15
product_tup = (101,'Wireless Mouse','Electronics',1999.89)
product_id,product_name,category,price = product_tup

#16
customer = {
    'id':18,
    'name':'Dharshini S',
    'city':'Erode',
    'orders':3,
    'status': "Pending"
}

#17
customer['city'] = 'Chennai'

#18
customer['orders'] += 1

#19
customer['email'] = 'dharshinis369@gmail.com'

#20
for key, value in customer.items():
    print(f"{key}: {value}")