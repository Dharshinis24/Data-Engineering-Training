file = open("employees.txt","a")
file.write("104,Sara,Sales,68000\n")
file.close()

#printing
file = open("employees.txt","r")
for line in file:
    print(line.strip())
file.close()

#structured data -- tables(Mysql)
#semistructured data -- json(Mongodb)
#unstructured data -- text,audio,video,pdf,doc(Azure cloud)