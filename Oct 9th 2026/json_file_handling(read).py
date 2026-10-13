import json
with open("products.json","r") as file:
    products = json.load(file)
    for product in products:
        print(product)