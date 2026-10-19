def calculating_shipment_cost(weight,cost):
    print("Shipment cost: ",weight * cost)

def shipment_category(weight):
    if weight > 20:
        return "Heavy shipment"
    elif weight >= 10 and weight <=20:
        return "Medium shipment"
    return "light shipment"