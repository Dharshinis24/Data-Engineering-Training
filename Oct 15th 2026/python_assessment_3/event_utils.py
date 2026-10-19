#75
def calculate_booking_amount(ticket_price, tickets):
    return ticket_price * tickets

def calculate_discount(amount):
    if amount > 10000:
        return (amount * 10)/100
    else:
        return (amount * 5)/100

def check_event_capacity(capacity,participants):
    if participants < capacity:
        return "Seats Available"
    elif participants == capacity:
        return "Full"
    else:
        return "Invalid data"
