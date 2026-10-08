#create  a database
create database training_db;


#using that database
use training_db;

create table Emplployees(
emp_id int,
emp_name varchar(50),
department varchar(100),
salary decimal(10,2),
city varchar(50));

alter table Emplployees modify emp_id int primary key;

rename table Emplployees to Employees;

insert into Employees
values
(1, 'Amit Sharma', 'IT', 60000, 'Hyderabad'),
(2, 'Sara Khan', 'HR', 50000, 'Bangalore'),
(3, 'Rahul Verma', 'Finance', 55000, 'Hyderabad'),
(4, 'Neha Singh', 'IT', 65000, 'Pune'),
(5, 'Arjun Mehta', 'Sales', 45000, 'Mumbai');

select * from Employees;

select * 
from Employees
order by emp_name 
limit 3;

select count(*) as count_of_IT_Employee
from Employees
where department = 'IT';

delete from Employees
where emp_id = 5;

update Employees
set department = 'Marketing'
where emp_id = 4;

