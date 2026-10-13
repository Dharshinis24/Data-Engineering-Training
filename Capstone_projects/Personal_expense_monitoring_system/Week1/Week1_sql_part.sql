create database capstone_project;

use capstone_project;

create table users(
	user_id int auto_increment primary key,
    name varchar(50) not null,
    email varchar(70) unique not null,
    created_date date
);

create table categories(
	category_id int auto_increment primary key,
    name varchar(100) unique not null
);

create table expenses(
	expense_id int auto_increment primary key,
    user_id int not null,
    category_id int not null,
    amount decimal(10,2) not null,
    expense_date date not null,
    description text,
    constraint fk_user
    foreign key (user_id) references users(user_id) on delete cascade,
    constraint fk_category
    foreign key (category_id) references categories(category_id) 
);


insert into users  (name, email, created_date)
values
('Arun', 'arun@gmail.com', '2026-01-01'),
('Priya', 'priya@gmail.com', '2026-01-05'),
('Kavin', 'kavin@gmail.com', '2026-02-01');

insert into categories (name)
values
('Food'),
('Transport'),
('Shopping'),
('Education');

insert into expenses (user_id, category_id, amount, expense_date, description)
values
-- Arun (user 1): January + February
(1, 1, 180.00,   '2026-01-15', 'Dinner'),
(1, 1, 320.00,   '2026-01-22', 'Groceries'),
(1, 2, 150.00,   '2026-02-03', 'Auto fare'),
(1, 1, 270.00,   '2026-02-08', 'Lunch'),
(1, 3, 25000.00, '2026-02-14', 'Laptop purchase'),

-- Priya (user 2): January + February
(2, 1, 220.00,   '2026-01-18', 'Lunch'),
(2, 2, 120.00,   '2026-01-25', 'Auto fare'),
(2, 2, 130.00,   '2026-02-06', 'Metro card recharge'),
(2, 1, 240.00,   '2026-02-12', 'Groceries'),
(2, 4, 800.00,   '2026-02-20', 'Online course fee'),

-- Kavin (user 3): February + March
(3, 1, 300.00,   '2026-02-14', 'Restaurant dinner'),
(3, 1, 350.00,   '2026-02-21', 'Groceries'),
(3, 2, 140.00,   '2026-02-18', 'Fuel'),
(3, 1, 280.00,   '2026-03-05', 'Groceries'),
(3, 3, 18000.00, '2026-03-09', 'Smartphone'),
(3, 4, 900.00,   '2026-03-15', 'Exam registration');

#CRUD Operations - add expenses

insert into expenses (user_id, category_id, amount, expense_date, description)
values
(1, 4, 6000.00, '2026-03-12', 'Exam fees');

#edit

select * from expenses where expense_id = 13;

update expenses 
set amount = 216.56
where expense_id = 13;

#delete

select * from expenses where expense_id = 17;

delete from expenses
where expense_id = 17;


#stored procedure

delimiter //
create procedure category_wise_monthly_expenses()
begin
	select 
		c.category_id,
		c.name,
        date_format(e.expense_date,"%Y-%m") as expense_month,
        sum(e.amount)as monthly_total_expenses
	from expenses e 
	join categories c on e.category_id = c.category_id
	group by c.category_id,c.name,expense_month
    order by expense_month,c.name;
end//
delimiter ;

call category_wise_monthly_expenses();

