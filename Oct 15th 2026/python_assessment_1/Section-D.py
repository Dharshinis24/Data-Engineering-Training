#Section D - OOP

class Product:
    def __init__(self,product_id,product_name,price,stock):
        self.product_id = product_id
        self.product_name = product_name
        self.price = price
        self.stock = stock

    def display_product(self):
        print(self.product_id,end=" ")
        print(self.product_name,end=" ")
        print(self.price,end=" ")
        print(self.stock)

    def calculate_value(self):
        return self.price * self.stock

product1 = Product(1,'Wireless Mouse',1999.89,7)
product2 = Product(2,"USB Cable",456,10)

class DiscountedProduct(Product):
    def __init__(self,product_id,product_name,price,stock,discount_percent):
        super().__init__(product_id, product_name, price, stock)
        self.discount_percent = discount_percent

    def display_product(self):
        print(self.product_id,end=" ")
        print(self.product_name,end=" ")
        print(self.price,end=" ")
        print(self.stock,end=" ")
        print(self.discount_percent)


class PremiumProduct:
    def display_product(self):
        print("Displaying premium product")

product_obj = Product(3,'Pen drive',1350,3)
discounted_product_obj = DiscountedProduct(4,'speaker',2000,10,20)
premium_product_obj = PremiumProduct()

obj_lst = [product_obj,discounted_product_obj,premium_product_obj]
for object in obj_lst:
    object.display_product()
