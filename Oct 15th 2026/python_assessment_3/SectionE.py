#47
with open('event_log.txt','w') as file:
    file.write("Event 1: Created a new event and initialized its attributes.\nEvent 2: Displayed event details, including event ID, event name, capacity, and ticket price.\nEvent 3: Calculated total event revenue based on the ticket price and number of tickets sold.\n")
    file.close()

#48
with open('event_log.txt','a') as file:
    file.write("Event 4: Created multiple event objects with different event details.\nEvent 5: Tested the revenue calculation method using different numbers of tickets sold.")
    file.close()

#49
with open('event_log.txt','r') as file:
    if file.readable():
        #50
        data = file.readlines()
        for line in data:
           #51
           print(line.strip())

        #52
        file.close()

