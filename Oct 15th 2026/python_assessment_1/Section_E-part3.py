import json

#48
with open("products.json",'r') as file:
    product_list = json.load(file)

    #49
    print("Product names are:")
    for product in product_list:
        print(product['product_name'])

    #50
    print("Product above 10000:")
    for product in product_list:
        if product['price'] > 10000:
            print(product)

    #51
    print("Supplier name and city for product")
    for product in product_list:
        print("Product name: ",product['product_name'])
        print("Supplier name: ",product['supplier']['name'],"\tSupplier city: ",product['supplier']['city'])

    #52
    colors = []
    for product in product_list:
        colors.extend(product['colors'])
    print("Colors: ",colors)

    #53
    unique_colors = set(colors)
    print("Unique colors: ",unique_colors)

    #54
    for product in product_list:
        if product['product_id'] == 202:
            product['stock'] = 100

    with open("products_updated.json",'w') as writefile:
        json.dump(product_list,writefile,indent=4)
        writefile.close()
    file.close()

