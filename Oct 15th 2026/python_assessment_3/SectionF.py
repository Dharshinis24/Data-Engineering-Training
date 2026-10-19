#53
import csv
with open("registrations.csv",'r')as file:
    data = csv.reader(file)

    #54
    registrations = list(data)

    #55
    print("Confirmed registrayions")
    for registration in registrations[1:]:
        if registration[-2] == "Confirmed":
            print(registration)

    #56
    print("Registrations from Hyderabad")
    for registration in registrations[1:]:
        if registration[3] == "Hyderabad":
            print(registration)

    #57
    print("Converting amount into numberic")
    for registration in registrations[1:]:
        registration[-1] = int(registration[-1])
    print(registrations)

    #58
    print("Registrations above 7000")
    for registration in registrations[1:]:
        if registration[-1] > 7000:
            print(registration)

    #59
    total = 0
    for registration in registrations[1:]:
        total += registration[-1]
    print("Total registrations amount: ",total)

    #60
    cities = []
    for registration in registrations[1:]:
        cities.append(registration[3])
    print("Unique cities are ",set(cities))
    file.close()