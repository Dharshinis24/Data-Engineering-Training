#18
class Shipment:
    #19
    def __init__(self,shipment_id,destination,weight,cost):
        self.shipment_id = shipment_id
        self.destination = destination
        self.weight = weight
        self.cost = cost
    #20
    def display(self):
        print(self.shipment_id)
        print(self.destination)
        print(self.weight)
        print(self.cost)

#21
class ExpressShipment(Shipment):
    #22
    def __init__(self, shipment_id, destination, weight, cost):
        super().__init__(shipment_id,destination,weight,cost)
    def display(self):
        super().display()
        self.express_surcharge = 500
        print("Express surcharge: ",self.express_surcharge)

normal_obj = Shipment('S101','Erode',20,10)
express_obj = ExpressShipment('S102','Chennai',24,40)

#23
for objects in [normal_obj,express_obj]:
    objects.display()