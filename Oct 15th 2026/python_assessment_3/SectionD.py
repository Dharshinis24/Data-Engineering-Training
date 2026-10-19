#Section D OOP

class Event:
    #36
    def __init__(self,event_id,event_name,capacity,ticket_price):
        self.event_id = event_id
        self.event_name = event_name
        self.capacity = capacity
        self.ticket_price = ticket_price

    #37
    def display_event(self):
        print("Event ID:", self.event_id)
        print("Event Name:", self.event_name)
        print("Capacity:", self.capacity)
        print("Ticket Price:", self.ticket_price)

    #38
    def calculate_revenue(self,tickets_sold):
        return self.ticket_price * tickets_sold

#39
e1 = Event(1,'Concert',1000,2000)
e2 = Event(2,'New year party',500,5000)

class OnlineEvent(Event):
    def __init__(self,event_id,event_name,capacity,ticket_price,platform):
        super().__init__(event_id, event_name, capacity, ticket_price)
        self.platform = platform

    #42
    def display_event(self):
        super().display_event()
        print("Platform ID:", self.platform)

class PhysicalEvent(Event):
    #43
    def __init__(self,event_id,event_name,capacity,ticket_price,venue):
        super().__init__(event_id, event_name, capacity, ticket_price)
        self.venue = venue

    #44
    def display_event(self):
        super().display_event()
        print("Venue :", self.venue)

#45
onlineevent_obj = OnlineEvent(1,'Concert',500,5000,'Zoom')
pysicalevent_obj = PhysicalEvent(1,'Concert',500,5000,'ABC Ground')

objects_list = [onlineevent_obj,pysicalevent_obj]
for object in objects_list:
    object.display_event()
