create database shop_db;

use shop_db;

create table products(
ProductID int primary key,
ProductName varchar(50),
Category varchar(50),
Price decimal(10,2),
StockQuantity int
);

insert into products (ProductID,ProductName,Category,Price,StockQuantity)
values
(1, 'Running Shoes', 'Sports', 1299.99, 45),
(2, 'Coffee Maker', 'Home & Kitchen', 2049.99, 30),
(3, 'Cotton T-Shirt', 'Clothing', 715.50, 200),
(4, 'Bluetooth Speaker', 'Electronics', 1059.99, 85),
(5, 'Yoga Mat', 'Sports', 900.00, 60),
(6, 'Garden Pot', 'Gardening' , 499.34, 1);

select * from products

select ProductName, Price
from products;

insert into products
values
(7, 'Wireless Mouse', 'Electronics', 1224.99, 120);

update products
set Price = 299.99
where ProductID = 6;

update products
set Price = Price + (Price * 0.1)
where Category = 'Electronics';

update products
set StockQuantity = StockQuantity- 1
where ProductId = 6;

update products
set Category = 'Home & Kitchen'
where ProductID = 6;

select *
from Products
where Price > 1000;

select *
from products
where StockQuantity < 10;

select *
from products
where Category = 'Electronics';


select *
from products
order by Price desc
limit 3;

delete from products
where StockQuantity = 0;
