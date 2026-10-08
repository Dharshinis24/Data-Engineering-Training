CREATE TABLE students (
student_id INT PRIMARY KEY,
student_name VARCHAR(100),
city VARCHAR(50)
);
INSERT INTO students VALUES
(1, 'Arun', 'Hyderabad'),
(2, 'Megha', 'Mumbai'),
(3, 'Zaid', 'Hyderabad'),
(4, 'Pooja', 'Pune'),
(5, 'Rohan', 'Delhi'),
(6, 'Sana', NULL),
(7, 'Vijay', 'Bangalore');

CREATE TABLE courses (
course_id INT PRIMARY KEY,
course_name VARCHAR(100),
fee DECIMAL(10,2)
);

INSERT INTO courses VALUES
(101, 'Python', 15000),
(102, 'Data Engineering', 25000),
(103, 'Power BI', 12000),
(104, 'Cloud Computing', 20000),
(105, 'Cyber Security', 22000),
(106, 'Machine Learning', 28000);

CREATE TABLE enrollments (
enrollment_id INT PRIMARY KEY,
student_id INT,
course_id INT,
enrollment_date DATE
);
INSERT INTO enrollments VALUES
(1001, 1, 101, '2026-09-01'),
(1002, 1, 102, '2026-09-03'),
(1003, 2, 103, '2026-09-04'),
(1004, 3, 102, '2026-09-05'),
(1005, 4, 104, '2026-09-06'),
(1006, 2, 101, '2026-09-07'),
(1007, 3, 105, '2026-09-08'),
(1008, 20, 102, '2026-09-09'),
(1009, 5, NULL, '2026-09-10');



#1
select
	s.student_name,
    c.course_name
from students s
join enrollments e on s.student_id = e.student_id
join courses c on c.course_id = e.course_id;

#2
select
	s.student_name,
    s.city,
    c.course_name,
    c.fee
from students s
join enrollments e on s.student_id = e.student_id
join courses c on e.course_id = c.course_id;

#3
select
	s.student_id,
    s.student_name,
    s.city
from students s 
join enrollments e on s.student_id = e.student_id
join courses c on c.course_id = e.course_id
where c.course_name = 'Data Engineering';

#4
select
	s.student_id,
    s.student_name,
    s.city
from students s
left join enrollments e on s.student_id = e.student_id;

#5
select
	s.student_id,
    s.student_name,
    s.city
from students s
left join enrollments e on s.student_id = e.student_id
where e.student_id is null;

#6
select
	c.course_id,
    c.course_name,
    c.fee
from courses c
left join enrollments e on c.course_id = e.course_id;

#7
select
	c.course_id,
    c.course_name,
    c.fee
from courses c
left join enrollments e on c.course_id = e.course_id
where e.course_id is null;

#8
select
	e.enrollment_id,
    e.student_id,
    e.course_id,
    e.enrollment_date
from enrollments e
left join students s on e.student_id = s.student_id
where s.student_id is null;

#9
select
	e.enrollment_id,
    e.student_id,
    e.course_id,
    e.enrollment_date
from enrollments e
left join courses c on e.course_id = c.course_id
where c.course_id is null;

#10
select
	s.student_id,
    s.student_name,
    count(e.course_id) as Total_courses
from students s
left join enrollments e on s.student_id = e.student_id
group by s.student_id, s.student_name;

#11
select
	s.student_id,
    s.student_name,
    sum(c.fee) as Total_fees
from students s
left join enrollments e on s.student_id = e.student_id
left join courses c on e.course_id = c.course_id
group by s.student_id, s.student_name;

#12
select
	s.student_id,
    s.student_name
from students s 
join enrollments e on s.student_id = e.student_id
group by s.student_id, s.student_name
having count(e.course_id) > 1;

#13
select
	c.course_id,
    c.course_name
from courses c
join enrollments e on c.course_id = e.course_id
group by c.course_id, c.course_name
having count(e.student_id) > 1;

#14
select
	c.course_id,
    c.course_name,
    sum(c.fee) as Total_revenue
from courses c
join enrollments e on c.course_id = e.course_id
group by c.course_id, c.course_name;

#15
select
	c.course_id,
    c.course_name,
    sum(c.fee) as Total_revenue
from courses c
join enrollments e on c.course_id = e.course_id
group by c.course_id, c.course_name
order by Total_revenue desc
limit 1;


