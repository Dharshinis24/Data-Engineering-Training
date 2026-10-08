use training_db


CREATE TABLE sales_orders (
    order_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    product_category VARCHAR(50),
    product_name VARCHAR(100),
    quantity INT,
    unit_price DECIMAL(10,2),
    salesperson VARCHAR(100),
    order_date DATE
);

INSERT INTO sales_orders VALUES
(101, 'Amit Sharma', 'Hyderabad', 'Electronics', 'Laptop', 1, 55000, 'Rahul', '2026-01-05'),
(102, 'Sara Khan', 'Mumbai', 'Electronics', 'Mobile', 2, 25000, 'Neha', '2026-01-06'),
(103, 'Vikram Rao', 'Hyderabad', 'Furniture', 'Office Chair', 4, 7000, 'Rahul', '2026-01-07'),
(104, 'Meera Nair', 'Bangalore', 'Electronics', 'Tablet', 3, 18000, 'Arjun', '2026-01-08'),
(105, 'Ravi Kumar', 'Delhi', 'Furniture', 'Desk', 2, 15000, 'Neha', '2026-01-10'),
(106, 'Fatima Ali', 'Hyderabad', 'Accessories', 'Keyboard', 5, 2500, 'Rahul', '2026-01-11'),
(107, 'Arjun Mehta', 'Mumbai', 'Accessories', 'Mouse', 10, 1200, 'Arjun', '2026-01-12'),
(108, 'Priya Singh', 'Bangalore', 'Electronics', 'Laptop', 2, 60000, 'Neha', '2026-01-15'),
(109, 'Sameer Khan', 'Hyderabad', 'Furniture', 'Bookshelf', 3, 9000, 'Rahul', '2026-01-16'),
(110, 'Anjali Verma', 'Delhi', 'Electronics', 'Mobile', 4, 22000, 'Arjun', '2026-01-18'),
(111, 'Kiran Reddy', 'Hyderabad', 'Accessories', 'Headphones', 6, 3000, 'Neha', '2026-01-20'),
(112, 'Sneha Patel', 'Mumbai', 'Furniture', 'Office Chair', 5, 7500, 'Rahul', '2026-01-21'),
(113, 'Raj Malhotra', 'Delhi', 'Accessories', 'Keyboard', 8, 2800, 'Arjun', '2026-01-23'),
(114, 'Nisha Gupta', 'Bangalore', 'Electronics', 'Monitor', 3, 16000, 'Neha', '2026-01-24'),
(115, 'Imran Sheikh', 'Hyderabad', 'Electronics', 'Mobile', 3, 24000, 'Rahul', '2026-01-25'),
(116, 'Pooja Rao', 'Mumbai', 'Furniture', 'Desk', 2, 14000, 'Arjun', '2026-01-26'),
(117, 'Adil Khan', 'Delhi', 'Electronics', 'Laptop', 1, 58000, 'Neha', '2026-01-28'),
(118, 'Kavya Reddy', 'Hyderabad', 'Accessories', 'Mouse', 7, 1500, 'Rahul', '2026-01-29'),
(119, 'Mohit Jain', 'Bangalore', 'Furniture', 'Desk', 3, 15500, 'Arjun', '2026-01-30'),
(120, 'Zoya Ahmed', 'Mumbai', 'Electronics', 'Monitor', 2, 17000, 'Neha', '2026-02-01');


select * 
from sales_orders
where city = 'Hyderabad'
and unit_price > 10000;

select *
from sales_orders
where city in ('Mumbai', 'Bangalore');

select sum(quantity * unit_price) as Total_sales
from sales_orders;

select count(*) as Total_orders
from sales_orders;

select min(unit_price) as Minimum
from sales_orders;

select max(unit_price) as Maximum
from sales_orders;

select avg(unit_price) as Avgerage
from sales_orders;


#1
select * 
from sales_orders
where product_category = 'Electronics';

#2
select *
from sales_orders
where quantity > 3;

#3
select * 
from sales_orders
where unit_price < 10000;

#4
select *
from sales_orders
where city = 'Hyderabad'
and quantity > 2;

#5
select *
from sales_orders
where salesperson in ('Rahul', 'Neha');

#6
select *
from sales_orders
where city not in('Delhi');

#7
select *
from sales_orders
where product_name in ('Laptop', 'Mobile', 'Monitor');

#8
select order_id, product_name, quantity, unit_price, (quantity*unit_price) as total_amount
from sales_orders;

#9
select sum(quantity * unit_price) as total_sales
from sales_orders
where product_category = 'Electronics';

#10
select sum(quantity * unit_price) as total_sales
from sales_orders
where city = 'Hyderabad';

#11
select avg(quantity) as Average_Quantity
from sales_orders;

select salesperson, count(*) as total_orders
from sales_orders
group by salesperson;

select city, sum(quantity * unit_price) as total_sales
from sales_orders
where product_category = 'Electronics'
group by city
having sum(quantity * unit_price) > 50000
order by total_sales desc;

#12
select sum(quantity) as total_sold_quantity
from sales_orders;

#13
select avg(unit_price) as average_price
from sales_orders
where product_category = 'Electronics';

#14
select max(quantity * unit_price) as Highest_total
from sales_orders;

#15
select city,sum(quantity*unit_price) as total_sales
from sales_orders
group by city;

#16
select city, count(*) as total_order
from sales_orders
group by city;

#17
select product_category, count(*) as total_sales
from sales_orders
group by product_category;

#18
select product_name, quantity
from sales_orders;

#19
select product_category, avg(unit_price) as Average_price
from sales_orders
group by product_category;

#20
select salesperson, count(*) as total_orders
from sales_orders
group by salesperson;

#21
select salesperson, sum(quantity * unit_price) as total_sales

