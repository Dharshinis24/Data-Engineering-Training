import csv

with open('shipments.csv','r') as csvfile:
    data = csv.reader(csvfile)
    shipments = list(data)


#13
def calculating_shipment_cost(weight,cost):
    print("Shipment cost: ",weight * cost)

#14
def shipment_category(weight):
    if weight > 20:
        return "Heavy shipment"
    elif weight >= 10 and weight <=20:
        return "Medium shipment"
    return "light shipment"

#15
print("Delivered shipments: ")
delivered_shipments = list(filter(lambda x:x[-2]=='Delivered',shipments[1:]))
print(delivered_shipments)

#16
destinations = list(map(lambda x:x[3],shipments[1:]))
print(destinations)

#17
sorted_shipments = sorted(shipments[1:],key=lambda x: float(x[-1]))
for i in sorted_shipments:
    print(i)