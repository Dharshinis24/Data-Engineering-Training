products = ["Laptop","Mouse","Keyboard","Monitor"]

#Displaying product
print(products)

#length of products
print(len(products))

#Accessing products using index
print(products[0])
#Negative index accessing
print(products[-1])

#updating using index
products[1] = "Wireless Mouse"
print(products)

#adding elements to last
products.append("Disk")
print(products)

#adding elements at specific index
products.insert(1,"Led Mouse")
print(products)

#remove specific item
products.remove("Led Mouse")
print(products)

#remove last item
products.pop()
print(products)