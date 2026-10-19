#Section E - Text,csv and json files

#41
activity_file = open("activity.txt","w")
activity_file.write("Activity 1: Interview preparation\n")
activity_file.write("Activity 2: Mock interview\n")
activity_file.write("Activity 3: Attending interview\n")
activity_file.close()

#42
append_activity_file = open("activity.txt","a")
append_activity_file.write("Activity 4: Selection\n")
append_activity_file.close()

#43
file = open("activity.txt","r")
if file.readable():
    data = file.readlines()
    for line in data:
        print(line.strip())
file.close()


