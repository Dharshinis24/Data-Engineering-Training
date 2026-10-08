create database sql_practice_pack;

use sql_practice_pack;

create table menu_items(
item_id int primary key,
item_name varchar(100),
category varchar(50),
price decimal(10,2),
available_qty int);

insert into menu_items
values
(1, 'Chicken Biryani', 'Main Course', 320, 25),
(2, 'Paneer Tikka', 'Starter', 240, 15),
(3, 'Masala Dosa', 'Breakfast', 120, 30),
(4, 'Veg Burger', 'Fast Food', 180, 10),
(5, 'Cold Coffee', 'Beverage', 150, 20),
(6, 'Chicken Burger', 'Fast Food', 220, 8),
(7, 'Idli', 'Breakfast', 80, 40),
(8, 'Fresh Lime', 'Beverage', 90, 0);

#1
select * 
from menu_items;

#2
select
	item_name,
    price
from menu_items;

#3
insert into menu_items(item_id, item_name, category, price, available_qty)
values (9, 'Mushroom Biriyani', 'Main Course', 280, 100);

#4
update menu_items
set price = 460
where item_name = 'Chicken Biryani';

#5
update menu_items
set price = price + (price * 0.1)
where category = 'Fast Food';

#6
update menu_items
set available_qty = available_qty - 2
where item_name = 'Veg Burger';

#7
delete from menu_items
where available_qty = 0;

#8
select *
from menu_items
where price > 200;

#9
select *
from menu_items
where price between 100 and 250;

#10
select *
from menu_items
where category = 'Breakfast';

#11
select *
from menu_items
where category = 'Breakfast' or category = 'Beverage';

#12
select *
from menu_items
where item_name like '%Chicken%';

#13
select *
from menu_items
order by price desc;

#14
select *
from menu_items
order by price desc
limit 3;

#15
select *
from menu_items
where available_qty < 15;


