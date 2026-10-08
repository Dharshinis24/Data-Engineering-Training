CREATE TABLE food_orders (
order_id INT PRIMARY KEY,
restaurant VARCHAR(100),
city VARCHAR(50),
food_type VARCHAR(50),
order_amount DECIMAL(10,2),
delivery_partner VARCHAR(50),
order_date DATE
);
INSERT INTO food_orders VALUES
(101, 'Spice Hub', 'Hyderabad', 'Indian', 850, 'Ravi', '2026-09-01'),
(102, 'Burger Zone', 'Hyderabad', 'Fast Food', 520, 'Kiran', '2026-09-01'),
(103, 'Pizza Point', 'Mumbai', 'Fast Food', 1100, 'Ravi', '2026-09-02'),
(104, 'Curry House', 'Bangalore', 'Indian', 760, 'Aman', '2026-09-02'),
(105, 'Spice Hub', 'Hyderabad', 'Indian', 1250, 'Kiran', '2026-09-03'),
(106, 'Sushi World', 'Mumbai', 'Japanese', 1800, 'Aman', '2026-09-03'),
(107, 'Pizza Point', 'Mumbai', 'Fast Food', 900, 'Ravi', '2026-09-04'),
(108, 'Curry House', 'Bangalore', 'Indian', 640, 'Kiran', '2026-09-04'),
(109, 'Burger Zone', 'Hyderabad', 'Fast Food', 430, 'Aman', '2026-09-05'),
(110, 'Sushi World', 'Mumbai', 'Japanese', 2100, 'Ravi', '2026-09-05'),
(111, 'Spice Hub', 'Hyderabad', 'Indian', 950, 'Aman', '2026-09-06'),
(112, 'Curry House', 'Bangalore', 'Indian', 880, 'Ravi', '2026-09-06');

#1
select 
	count(*) as Total_no_order
from food_orders;

#2
select
	sum(order_amount) as Total_revenue
from food_orders;

#3
select
	avg(order_amount) as Average_order_value
from food_orders;

#4
select
	max(order_amount) as Highest_order_amount
from food_orders;

#5
select
	min(order_amount) as Lowest_order_amount
from food_orders;

#6
select
	city,
    sum(order_amount) as Total_revenue
from food_orders
group by city;

#7
select
	restaurant,
    count(*) as Total_orders
from food_orders
group by restaurant;

#8
select
	food_type,
    avg(order_amount) as Average_order_value
from food_orders
group by food_type;

#9
select
	delivery_partner,
    sum(order_amount) as Total_revenue
from food_orders
group by delivery_partner;

#10
select 
	city
from food_orders
group by city
having count(order_id) > 3;

#11
select
	restaurant,
    sum(order_amount) as revenue_above2000
from food_orders
group by restaurant
having  revenue_above2000 > 2000;

#12
select
	delivery_partner,
    avg(order_amount) as Average_value_above800
from food_orders
group by delivery_partner
having  Average_value_above800 > 800;

#13
select 
	food_type,
    sum(order_amount) as Total_revenue
from food_orders
group by food_type
having Total_revenue > 2500;

#14
select
	city,
    sum(order_amount) as Revenue
from food_orders
group by city
order by Revenue desc;

#15
select
	restaurant,
    sum(order_amount) as revenue
from food_orders
group by restaurant
order by revenue desc
limit 1;