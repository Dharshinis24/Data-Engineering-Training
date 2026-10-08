CREATE TABLE registrations (
registration_id INT PRIMARY KEY,
full_name VARCHAR(100),
email VARCHAR(100),
mobile VARCHAR(40),
city VARCHAR(50),
postal_code VARCHAR(20)
);

INSERT INTO registrations VALUES
(1, ' rohit sharma ', ' ROHIT@GMAIL.COM ', '+91-98765-43210', 'hyderabad', '500001'),
(2, 'SARA KHAN', 'sara@yahoo.com', '99887 66554', ' MUMBAI ', '400001'),
(3, ' amit patel ', '', '(040)99887766', 'Hyderabad', '500 032'),
(4, 'Neha Singh ', NULL, '9876543210', 'BANGALORE', '560001'),
(5, 'imran ali', 'IMRAN@MAIL.COM ', '91 9988772211', NULL, '500084'),
(6, 'Priya Rao', 'priya@gmail', '98765-AB210', 'Pune', '411001');

#1
update registrations
set full_name = trim(full_name);

#2
update registrations
set full_name = upper(full_name);

#3
update registrations
set email = lower(email);

#4
update registrations
set email = null
where email = '';

#5
update registrations
set mobile = replace(replace(mobile, '-', ''), ' ', '');

#6
update registrations
set mobile = regexp_replace(mobile, '[^0-9]', '');

#7
update registrations
set city = upper(city);

#8
select *
from registrations
where city is null;

#9
select *
from registrations
where email is null or trim(email) = '';

#10
select *
from registrations
where email regexp '@gmail\\.com$';

#11
select *
from registrations
where email not regexp '^[a-zA-Z0-9.%+-]+@[A-Za-z0-9.-]+\\.[a-zA-Z]{2,}$';

#12
update registrations
set postal_code = regexp_replace(postal_code, '[^0-9]', '');

#13
select *
from registrations
where mobile regexp '[a-zA-Z]';

#14
select 
    trim(full_name) as name,
    lower(nullif(trim(email), '')) as email,
    regexp_replace(mobile, '[^0-9]', '') as mobile,
    Upper(trim(city)) as city
from registrations;

#15
create table copied_registrations as
select
	registration_id,
    trim(full_name) as name,
    lower(nullif(trim(email), '')) as email,
    regexp_replace(mobile, '[^0-9]', '') as mobile,
    Upper(trim(city)) as city,
    regexp_replace(postal_code , '[^0-9]', '') as postal_code
from registrations;


