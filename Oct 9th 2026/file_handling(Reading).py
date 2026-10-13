#reading the text file

file = open("employees.txt", "r")
if file.readable():
    data = file.read()
    print(data)
file.close()