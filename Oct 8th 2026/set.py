cities = {"Hyderabad","Mumbai","Delhi","Hyderabd"}
print(cities)

#Handling duplicate items
numbers = [2,1,2,1,2,3]
unique_numbers = set(numbers)
print(unique_numbers)

#adding items to set
cities.add("Pune")
print(cities)

#removing items from set
cities.remove("Mumbai")
print(cities)

#safest remove method..if the deleting element is not presnt
cities.discard("New York")
print(cities)