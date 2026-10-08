CREATE TABLE insurance_claims (
claim_id INT PRIMARY KEY,
customer_name VARCHAR(100),
insurance_type VARCHAR(50),
claim_amount DECIMAL(12,2),
branch VARCHAR(50)
);

INSERT INTO insurance_claims VALUES
(1, 'Ajay Kumar', 'Health', 75000, 'Hyderabad'),
(2, 'Meena Shah', 'Motor', 45000, 'Mumbai'),
(3, 'Rohit Jain', 'Health', 125000, 'Hyderabad'),
(4, 'Sara Ali', 'Travel', 30000, 'Delhi'),
(5, 'Vikas Rao', 'Motor', 85000, 'Mumbai'),
(6, 'Nisha Singh', 'Health', 60000, 'Delhi'),
(7, 'Imran Khan', 'Travel', 55000, 'Hyderabad'),
(8, 'Pooja Patel', 'Motor', 40000, 'Delhi'),
(9, 'Karan Mehta', 'Health', 150000, 'Mumbai'),
(10, 'Farah Ahmed', 'Travel', 35000, 'Hyderabad');

#1
with total_claims_by_insurance_type as (
select
	insurance_type,
    sum(claim_amount) as total_claims
from insurance_claims
group by insurance_type)
select *
from total_claims_by_insurance_type;

#2
with total_claims_by_branch as (
select
	branch,
    sum(claim_amount) as total_claims
from insurance_claims
group by branch)
select *
from total_claims_by_branch;

#3
with total_claim_amount as(
select
	insurance_type,
    sum(claim_amount) as total_claim
from insurance_claims
group by insurance_type)
select *
from total_claim_amount
where total_claim > 200000;

#4
with average_claim_amount as(
select 
    avg(claim_amount) as average
from insurance_claims)
select *
from insurance_claims
where claim_amount > 
	(select average from average_claim_amount);
    
#5
with total_claim_amount as (
select 
	insurance_type,
    sum(claim_amount) as total_amount
from insurance_claims
group by insurance_type)
select 
	insurance_type,
	rank() over(order by total_amount desc) as ranks
from total_claim_amount;

#6
with total_claims_by_insurance_type as (
select
	insurance_type,
    sum(claim_amount) as total_claims
from insurance_claims
group by insurance_type),
total_claims_by_branch as (
select
	branch,
    sum(claim_amount) as total_claims
from insurance_claims
group by branch)
select 
tci.insurance_type,
    tci.total_claims as insurance_type_total,
    tcb.branch,
    tcb.total_claims as branch_total
from total_claims_by_insurance_type tci
cross join  total_claims_by_branch tcb;

#7
select 
	claim_id,
    customer_name,
    insurance_type,
    claim_amount,
    branch
from insurance_claims ic
where claim_amount > 
(select 
	avg(claim_amount)
from insurance_claims ic2
where ic2.insurance_type = ic.insurance_type);

#8
select 
	claim_id,
    customer_name,
    insurance_type,
    claim_amount,
    branch
from insurance_claims ic
where claim_amount > 
(select 
	avg(claim_amount)
from insurance_claims ic2
where ic2.branch = ic.branch);

#9
select
	insurance_type,
    claim_amount
from insurance_claims ic
where claim_amount =
(select 
max(ic2.claim_amount)
from insurance_claims ic2
where ic2.insurance_type = ic.insurance_type);

#10
select
	customer_name
from insurance_claims ic
where claim_amount > 
(select avg(ic2.claim_amount) 
from insurance_claims ic2
where ic2.branch = ic.branch);