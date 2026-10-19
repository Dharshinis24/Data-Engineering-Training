import csv

#44
with open("customers.csv","r") as csvfile:
    data = csv.reader(csvfile)

    #45
    customers = list(data)

    #46
    print("Active customers:")
    for customer in customers[1:]:
        if customer[-1]== 'True':
            print(customer)

    #47
    print("Hyderabad customers:")
    for customer in customers[1:]:
        if customer[2] == 'Hyderabad':
            print(customer)

    csvfile.close()

