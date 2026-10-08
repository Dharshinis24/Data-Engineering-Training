CREATE TABLE hotel_bookings (
booking_id INT PRIMARY KEY,
hotel_city VARCHAR(50),
room_type VARCHAR(50),
nights INT,
amount DECIMAL(10,2)
);

INSERT INTO hotel_bookings VALUES
(1, 'Hyderabad', 'Standard', 2, 6000),
(2, 'Hyderabad', 'Deluxe', 3, 13500),
(3, 'Hyderabad', 'Suite', 2, 18000),
(4, 'Mumbai', 'Standard', 2, 9000),
(5, 'Mumbai', 'Deluxe', 3, 18000),
(6, 'Mumbai', 'Suite', 1, 15000),
(7, 'Bangalore', 'Standard', 3, 10500),
(8, 'Bangalore', 'Deluxe', 2, 12000),
(9, 'Bangalore', 'Suite', 2, 20000);

#1
select
	hotel_city,
    sum(amount) as total_revenue
from hotel_bookings
group by hotel_city;

#2
select
	room_type,
    sum(amount) as total_revenue
from hotel_bookings
group by room_type;

#3
select
	hotel_city,
    room_type,
    SUM(amount) AS total_revenue
from hotel_bookings
group by hotel_city,room_type;

#4
select
	hotel_city,
    sum(amount) as total
from hotel_bookings
group by hotel_city with rollup;

#5
select
    sum(amount) as grand_total
from hotel_bookings;

#6
select
	hotel_city,room_type,
	sum(nights) as total_nights
from hotel_bookings
group by hotel_city, room_type;

#7
select
	hotel_city,
    room_type,
    sum(amount) as total
from hotel_bookings
group by hotel_city,room_type with rollup;
