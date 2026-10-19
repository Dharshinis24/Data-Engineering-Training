#76
import event_utils

#77
amount = event_utils.calculate_booking_amount(1500,10)
print("Booking amount: ",amount)
print("Discount: ",event_utils.calculate_discount(amount))
print("Event Status: ",event_utils.check_event_capacity(500,100))

#78
from event_utils import check_event_capacity
print("Event Status: ",check_event_capacity(50,50))

#79
import event_utils as eu
print("Booking amount: ",eu.calculate_booking_amount(500,100))
