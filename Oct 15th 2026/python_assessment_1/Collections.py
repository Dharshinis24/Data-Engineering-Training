import csv

with open('shipments.csv','r') as csvfile:
    data = csv.reader(csvfile)
    shipments = list(data)

#7
shipment_cost = []
for shipment in shipments[1:]:
    shipment_cost.append(int(shipment[-1]))

#8
print("Total: ",sum(shipment_cost))
print("Average: ",sum(shipment_cost)/len(shipment_cost))
print("Minimum: ",min(shipment_cost))
print("Maximum: ",max(shipment_cost))

#9
cities = []
for shipment in shipments[1:]:
    cities.append(shipment[3])
destination_cities = set(cities)
print(destination_cities)

#10
new_shipment = {
    'shipment_id':'S1013',
    'hub_id':'H03',
    'shipment_date':'2026-10-01',
    'destination':'Erode',
    'weight':20,
    'status':'Transit',
    'cost':1200
}

#11

list_of_shipments = [
    {
        "shipment_id": "S1014",
        "hub_id": "H01",
        "shipment_date": "2026-10-01",
        "destination": "Erode",
        "weight": 15,
        "status": "Delivered",
        "cost": 800
    },
    {
        "shipment_id": "S1015",
        "hub_id": "H02",
        "shipment_date": "2026-10-02",
        "destination": "Chennai",
        "weight": 25,
        "status": "Transit",
        "cost": 1500
    },
    {
        "shipment_id": "S1016",
        "hub_id": "H03",
        "shipment_date": "2026-10-03",
        "destination": "Coimbatore",
        "weight": 10,
        "status": "Pending",
        "cost": 600
    }
]

#12
print("In Transit shipment")
for shipment in shipments:
    if shipment[-2]=='In Transit':
        print(shipment)

