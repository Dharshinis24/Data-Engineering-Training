CREATE TABLE call_performance (
call_id INT PRIMARY KEY,
agent_name VARCHAR(100),
team VARCHAR(50),
calls_handled INT,
customer_rating DECIMAL(3,2),
performance_date DATE
);

INSERT INTO call_performance VALUES
(1, 'Aman', 'Alpha', 42, 4.50, '2026-09-01'),
(2, 'Sara', 'Alpha', 38, 4.70, '2026-09-01'),
(3, 'Ravi', 'Beta', 50, 4.20, '2026-09-01'),
(4, 'Neha', 'Beta', 45, 4.80, '2026-09-01'),
(5, 'Aman', 'Alpha', 48, 4.60, '2026-09-02'),
(6, 'Sara', 'Alpha', 44, 4.50, '2026-09-02'),
(7, 'Ravi', 'Beta', 46, 4.30, '2026-09-02'),
(8, 'Neha', 'Beta', 52, 4.90, '2026-09-02'),
(9, 'Kabir', 'Alpha', 41, 4.40, '2026-09-01'),
(10, 'Kabir', 'Alpha', 49, 4.60, '2026-09-02'),
(11, 'Pooja', 'Beta', 45, 4.70, '2026-09-01'),
(12, 'Pooja', 'Beta', 50, 4.80, '2026-09-02');

#1
select
	call_id,
	agent_name,
	team,
	calls_handled,
	customer_rating,
	performance_date,
    sum(calls_handled) over () as total_calls_handled
from call_performance;

#2
select
	call_id,
	agent_name,
	team,
	calls_handled,
	customer_rating,
	performance_date,
    sum(calls_handled) over (partition by team) as total_calls_handled
from call_performance;

#3
select
	call_id,
	agent_name,
	team,
	calls_handled,
	customer_rating,
	performance_date,
    avg(calls_handled) over (partition by team) as team_avg_calls
from call_performance;


#4
select
	call_id,
	agent_name,
	team,
	calls_handled,
	customer_rating,
	performance_date,
    avg(customer_rating) over (partition by team) as team_avg_rating
from call_performance;

#5
select
	call_id,
	agent_name,
	team,
	calls_handled,
	customer_rating,
	performance_date,
    sum(calls_handled) over (partition by agent_name order by performance_date) as total_calls_handled
from call_performance;

#6
select
	call_id,
	agent_name,
	team,
	calls_handled,
	customer_rating,
	performance_date,
    sum(calls_handled) over (partition by team order by performance_date) as total_calls_handled
from call_performance;

#7
select 
	calls_handled,
    avg(calls_handled) over( partition by team) as teams_average_call
from call_performance;

#8
select
	call_id,
    agent_name,
    team,
    calls_handled,
    customer_rating,
    performance_date,
    lag(calls_handled) over(partition by agent_name order by performance_date) as total_previous_day_count
from call_performance;

#9
select
	call_id,
    agent_name,
    team,
    calls_handled,
    customer_rating,
    performance_date,
	calls_handled - lag(calls_handled) over(partition by agent_name order by performance_date)  as difference
from call_performance;



#10
select
	call_id,
    agent_name,
    team,
    calls_handled,
    customer_rating,
    performance_date,
    sum(calls_handled)  over(partition by agent_name) as total_call
from call_performance;
