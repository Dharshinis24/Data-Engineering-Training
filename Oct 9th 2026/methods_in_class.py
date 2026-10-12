class Product:
    name=""
    price=0

    #method
    def display(self):
        print(f"Product name: {self.name}, Price: {self.price}")

#creating object
product1 = Product()

product1.name = "Monitor"
product1.price = 18000

#calling the method
product1.display()