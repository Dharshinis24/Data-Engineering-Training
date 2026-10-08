CREATE DATABASE hospital_lab;
USE hospital_lab;

CREATE TABLE patients (
patient_id INT PRIMARY KEY,
patient_name VARCHAR(100),
age INT,
city VARCHAR(50)
);
INSERT INTO patients VALUES
(1, 'Rohan Das', 34, 'Hyderabad'),
(2, 'Meena Iyer', 46, 'Chennai'),
(3, 'Kabir Khan', 29, 'Hyderabad'),
(4, 'Lakshmi Rao', 61, 'Bangalore'),
(5, 'John Mathew', 38, 'Mumbai'),
(6, 'Ayesha Ali', 25, NULL),
(7, 'Naveen Reddy', 52, 'Pune');

CREATE TABLE doctors (
doctor_id INT PRIMARY KEY,
doctor_name VARCHAR(100),
specialization VARCHAR(50),
consultation_fee DECIMAL(10,2)
);
INSERT INTO doctors VALUES
(101, 'Dr. Sharma', 'Cardiology', 1200),
(102, 'Dr. Farah', 'Dermatology', 800),
(103, 'Dr. Joseph', 'Orthopedics', 1000),
(104, 'Dr. Mehta', 'General Medicine', 600),

(105, 'Dr. Sana', 'Neurology', 1500),
(106, 'Dr. Rao', 'Pediatrics', 700);

CREATE TABLE appointments (
appointment_id INT PRIMARY KEY,
patient_id INT,
doctor_id INT,
appointment_date DATE,
status VARCHAR(30)
);
INSERT INTO appointments VALUES
(1001, 1, 101, '2026-10-01', 'Completed'),
(1002, 2, 104, '2026-10-01', 'Completed'),
(1003, 3, 102, '2026-10-02', 'Cancelled'),
(1004, 1, 105, '2026-10-03', 'Completed'),
(1005, 4, 101, '2026-10-03', 'Scheduled'),
(1006, 5, 103, '2026-10-04', 'Completed'),
(1007, 3, 104, '2026-10-04', 'Completed'),
(1008, NULL, 102, '2026-10-05', 'Scheduled'),
(1009, 20, 103, '2026-10-05', 'Completed'),
(1010, 2, NULL, '2026-10-06', 'Scheduled');

#1
select
	a.appointment_id,
    p.patient_name,
    d.doctor_name,
    a.appointment_date
from appointments a
join doctors d on a.doctor_id = d.doctor_id
join patients p on a.patient_id = p.patient_id;

#2
select
	d.doctor_name,
	d.specialization
from appointments a
join doctors d on a.doctor_id = d.doctor_id
where a.status = 'Completed';

#3
select
	p.patient_id,
    p.patient_name,
    a.*
from patients p
join appointments a on p.patient_id = a.patient_id
where p.city = 'Hyderabad';

#4
select
	p.*,
    a.*
from patients p
left join appointments a
on p.patient_id = a.patient_id;

#5
select 
	p.*
from patients p
left join appointments a
on p.patient_id = a.patient_id
where a.appointment_id is null;

#6
select
	d.*,
	a.*
from doctors d
left join appointments a
on d.doctor_id = a.doctor_id;

#7
select 
	d.*
from doctors d
left join appointments a
on d.doctor_id = a.doctor_id
where a.appointment_id is null;

#8
select
	a.*
from appointments a 
left join patients p
on a.patient_id = p.patient_id
where p.patient_id is null;

#9
select
	a.*
from appointments a 
left join doctors d
on a.doctor_id = d.doctor_id
where a.doctor_id is null;

#10
select
	p.patient_name,
	d.doctor_name,
	d.specialization,
	d.consultation_fee,
	a.status
from appointments a
join doctors d on a.doctor_id = d.doctor_id
join patients p on a.patient_id = p.patient_id;

#11
select
	d.doctor_name,
    count(a.appointment_id) as total_appointments
from doctors d
left join appointments a
on d.doctor_id = a.doctor_id
group by d.doctor_name;

#12
select
	d.doctor_name,
    sum(d.consultation_fee) as total
from doctors d
join appointments a on a.doctor_id = d.doctor_id
where a.status = 'Completed'
group by d.doctor_id, d.doctor_name;

#13
select
	d.*
from doctors d
join appointments a
on a.doctor_id = d.doctor_id
group by d.doctor_id
having count(*) > 1;

#14
select
	d.specialization,
    sum(d.consultation_fee) as total_consultation_value
from doctors d
join appointments a
on d.doctor_id = a.doctor_id
where a.status = 'Completed'
group by d.specialization
order by total_consultation_value desc
limit 1;

#15
select
	p.*,
    count(a.appointment_id) as total_appointments
from patients p
left join appointments a
on a.patient_id = p.patient_id
group by p.patient_id;

#16
select
	p.*
from patients p 
join appointments a on p.patient_id = a.patient_id
group by p.patient_id 
having count(distinct a.doctor_id) > 1;

#17
select distinct
	p.*
from patients p
join appointments a on a.patient_id = p.patient_id
join doctors d on a.doctor_id = d.doctor_id
where d.specialization = 'Cardiology';

#18
select
	a.*
from appointments a 
join doctors d on a.doctor_id = d.doctor_id
where d.consultation_fee > 900;

#19
select
    avg(d.consultation_fee) as Average_Consultation_fee
from doctors d 
join appointments a on d.doctor_id = a.doctor_id
where a.status = 'Completed';

#20
select
	d.*,
    count(a.appointment_id) as completed_appointments
from doctors d
join appointments a on d.doctor_id = a.doctor_id
where a.status = 'Completed'
group by d.doctor_id
order by completed_appointments desc
limit 1; 