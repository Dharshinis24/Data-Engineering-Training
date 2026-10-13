import csv

#1
with open("shipments.csv","r") as file:
    reader = csv.reader(file)

    #2
    lst = list(reader)

    #3
    print(lst)

    #4
    for row in lst:
        print(row[0],end="   ")
        print(row[1],end="   ")
        print(row[4])

    #5
    for row in range(1,len(lst)):
        lst[row][3] = float(lst[row][3])
        lst[row][5] = float(lst[row][5])

    #6
    total_cost = 0
    for r in range(1,len(lst)):
        total_cost +=  lst[r][5]
    print("Total shipping cost:",total_cost)

    #7
    print("Shipments whose cost greater than 700")
    for r in range(1,len(lst)):
        if (lst[r][5]) > 700:
            print(lst[r])

    #8
    print("Delivered Shipments")
    delivered_shipments = list(filter(lambda x:x[4]=="Delivered",lst[1:]))
    for row in delivered_shipments:
        print(row)

    #9
    print("Weight more than 10")
    weight_above_10 = list(filter(lambda x:x[3] > 10,lst[1:]))
    for row in weight_above_10:
        print(row)

    #10
    print("City names")
    print(list(map(lambda x:x[2],lst[1:])))


    #11
    print("Unique city names")
    print(set(map(lambda x:x[2],lst[1:])))

    #12
    print("Sorted by cost lowest to highest")
    cost_sort = sorted(lst[1:],key=lambda x:x[5])
    for order in cost_sort:
        print(order)

    #13
    print("Sorted by weight highest to lowest")
    weight_sort = sorted(lst[1:], key=lambda x: x[3], reverse=True)
    for order in weight_sort:
        print(order)

    #14
    print("Sorted by customer name")
    name_sort = sorted(lst[1:], key=lambda x: x[1])
    for order in name_sort:
        print(order)

    #15
    cost_per_kg = lambda x:x[5]/x[3]
    for shipment in lst[1:]:
        for i in shipment:
            print(i,end=" ")
        print(cost_per_kg(shipment))

    file.close()