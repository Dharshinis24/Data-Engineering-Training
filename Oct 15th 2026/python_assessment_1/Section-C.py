#Section C - Functions and Lambda

#21
def calculate_total(price, quantity):
    print("Total: ",(price * quantity))

#22
def calculate_discount(amount):
    return (amount * 10)/100

#23
def total_sales(sales):
    return sum(sales)

#24
def product_status(product):
    if product['stock'] > 0:
        return "Available"
    return "Out of stock"

#25
square_function = lambda x:x**2
print(square_function(5))


#26
sales_greater_20000 = list(filter(lambda x: x > 20000, sales))
print(sales_greater_20000)

#27
cities = list(map(lambda x: x['city'],lst_of_dict))
print(cities)

#28
unique_cities = set(cities)
print(unique_cities)

#29
sorted_product = sorted(lst_of_dict,key=lambda x: (x['price']))