sales = [
("North", 12000),
("South", 18000),
("West", 9500),
("North", 22000),
("East", 15000),
("South", 11000)
]

#1
print("Displaying tuples")
for tup in sales:
    print(tup)

#2
print("Only regions")
for tup in sales:
    print(tup[0])

#3
print("only sales amount")
for tup in sales:
    print(tup[1])

#4
print("sales greater than 12000")
for tup in sales:
    if tup[1] > 12000:
        print(tup)

#5
total_sales = 0
for tup in sales:
    total_sales += tup[1]
print("Total sales:",total_sales)

#6
minimum_sales = sales[0][1]
for tup in range(1,len(sales)):
    if minimum_sales > sales[tup][1]:
        minimum_sales = sales[tup][1]
print("Lowest sales:",minimum_sales)

maximum_sales = sales[0][1]
for tup in range(1,len(sales)):
    if maximum_sales < sales[tup][1]:
        maximum_sales = sales[tup][1]
print("highest sales:",maximum_sales)

#7
sales_amount = []
for tup in sales:
    sales_amount.append(tup[1])
print(sales_amount)

#8
print("unique regions")
regions = set()
for tup in sales:
    regions.add(tup[0])
print(regions)

#9
sales_sort = sorted(sales,key=lambda x:x[1])
print(sales_sort)

#10
region_sort = sorted(sales,key=lambda x:x[0])
print(region_sort)