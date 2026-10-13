class Products:
    name=""
    price=0
    quantity=0

    def total_amount(self):
        return self.price * self.quantity

#Laptop product
product1 = Products()
product1.name = "Laptop"
product1.price = 65000
product1.quantity = 2
print("Product1",product1.total_amount())

#mouse product
product2 = Products()
product2.name = "Mouse"
product2.price = 650
product2.quantity = 1
print("Product2",product2.total_amount())

