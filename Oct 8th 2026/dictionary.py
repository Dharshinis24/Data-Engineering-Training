products ={
    "product_id":101,
    "product_name":"Laptop",
    "category":"Electronics",
    "price":65000
}

#displaying dictionary
print(products)

#accessing using keys
print(products["product_id"])

#safest method to get values...even if they didn't present
print(products.get("product_id"))

#update
products["price"] = 100000
print(products)

#add new element
products["stock"] = 20
print(products)

#remove
products.pop("product_id")
print(products)
del products["stock"]
print(products)