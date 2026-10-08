CREATE TABLE staff_hierarchy (
employee_id INT PRIMARY KEY,
employee_name VARCHAR(100),
manager_id INT,
designation VARCHAR(100)
);

INSERT INTO staff_hierarchy VALUES
(1, 'Raj Malhotra', NULL, 'CEO'),
(2, 'Meera Shah', 1, 'CTO'),
(3, 'Vikram Rao', 1, 'Sales Director'),
(4, 'Aman Khan', 2, 'Engineering Manager'),
(5, 'Sara Ali', 2, 'Data Manager'),
(6, 'Rohit Das', 4, 'Developer'),
(7, 'Priya Singh', 4, 'Developer'),
(8, 'Kabir Ahmed', 5, 'Data Engineer'),
(9, 'Neha Rao', 5, 'Data Analyst'),
(10, 'Imran Sheikh', 3, 'Sales Manager'),
(11, 'Pooja Jain', 10, 'Sales Executive');

#1
select * from
staff_hierarchy
where manager_id is null;

#2
select * 
from staff_hierarchy
where manager_id = 
(select employee_id from staff_hierarchy where designation = 'CEO');

#3
select *
from staff_hierarchy 
where manager_id = 
(select employee_id from staff_hierarchy where designation = 'CTO');

#4
with recursive employee_hierarchy as (
select
        employee_id,
        employee_name,
        manager_id
from staff_hierarchy
where manager_id is null
union all
select
        e.employee_id,
        e.employee_name,
        e.manager_id
from staff_hierarchy s
join employee_hierarchy eh on e.manager_id = eh.employee_id
)
select *
from employee_hierarchy;

#5
with recursive hierarchy_level as(
select
	employee_id,
    employee_name,
    manager_id,
    0 as level
from staff_hierarchy
where manager_id is null
union all
select
	sh.employee_id,
    sh.employee_name,
    sh.manager_id,
    hl.level+1
from staff_hierarchy sh
join hierarchy_level hl on sh.manager_id = hl.employee_id
)
select * from hierarchy_level
order by level;

#6
with recursive hierarchy_level as(
select
	employee_id,
    employee_name,
    manager_id
from staff_hierarchy
where employee_name = 'Meera Shah'
union all
select
	sh.employee_id,
    sh.employee_name,
    sh.manager_id
from staff_hierarchy sh
join hierarchy_level hl on sh.manager_id = hl.employee_id
)
select * from hierarchy_level
where employee_name <> 'Meera Shah';

#7
with recursive hierarchy_level as(
select
	employee_id,
    employee_name,
    manager_id
from staff_hierarchy
where employee_name = 'Aman Khan'
union all
select
	sh.employee_id,
    sh.employee_name,
    sh.manager_id
from staff_hierarchy sh
join hierarchy_level hl on sh.manager_id = hl.employee_id
)
select * from hierarchy_level
where employee_name <> 'Aman Khan';

#8
select
	sh.employee_id as employee,
    sh.manager_id as manager
from staff_hierarchy sh
left join staff_hierarchy sh2
on sh.manager_id = sh2.employee_id;

#9
with recursive hierarchy_level as(
select
	employee_id,
    employee_name,
    manager_id,
    0 as level
from staff_hierarchy
where manager_id is null
union all
select
	sh.employee_id,
    sh.employee_name,
    sh.manager_id,
    hl.level+1
from staff_hierarchy sh
join hierarchy_level hl on sh.manager_id = hl.employee_id
)
select level,
count(*) as count_of_employee
from hierarchy_level
group by level
order by level;