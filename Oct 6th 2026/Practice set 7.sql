#1
select
	call_id,
	agent_name,
	team,
	calls_handled,
	customer_rating,
	performance_date,
    rank() over(order by calls_handled desc) as Rank_calls_handled
from call_performance;
    
#2
select
	call_id,
    agent_name,
    team,
    calls_handled,
    customer_rating,
    performance_date,
    row_number() over(order by calls_handled desc) as row_numbers
from call_performance;

#3
select
	call_id,
	agent_name,
	team,
	calls_handled,
	customer_rating,
	performance_date,
    rank() over(order by calls_handled desc) as Ranks
from call_performance;

#4
select
	call_id,
	agent_name,
	team,
	calls_handled,
	customer_rating,
	performance_date,
    dense_rank() over(order by calls_handled desc) as DenseRanks
from call_performance;

#5
select
	call_id,
	agent_name,
	team,
	calls_handled,
	customer_rating,
	performance_date,
    row_number() over(order by calls_handled desc) as Row_numbers,
    rank() over(order by calls_handled desc) as Ranks,
    dense_rank() over(order by calls_handled desc) as DenseRanks
from call_performance;

#6
select
	call_id,
	agent_name,
	team,
	calls_handled,
	customer_rating,
	performance_date,
    rank() over(partition by team order by calls_handled desc) as Ranks
from call_performance;

#7
select 
	call_id,
    agent_name,
    team,
    calls_handled,
    customer_rating,
    performance_date,
    rank() over(order by customer_rating desc) as Ranks
from call_performance;


#8
with RankedPerformance as(
select 
	call_id,
    agent_name,
    team,
    calls_handled,
    customer_rating,
    performance_date,
    row_number() over(partition by team order by calls_handled desc) as row_numbers
from call_performance)
select 
	call_id,
    agent_name,
    team,
    calls_handled,
    customer_rating,
    performance_date
from RankedPerformance
where row_numbers <= 3;

#9
with bestperformanceday as (select
	call_id,
    agent_name,
    team,
    calls_handled,
    customer_rating,
    performance_date,
    row_number() over(partition by agent_name order by calls_handled desc) as best_performance_day
from call_performance)
select 
	call_id,
    agent_name,
    team,
    calls_handled,
    customer_rating,
    performance_date
from bestperformanceday
where best_performance_day = 1;

#10
with total_calls as (
select 
    agent_name,
    sum(calls_handled) as totals
from call_performance
group by agent_name)
select
    agent_name,
    rank() over(order by totals desc) as ranks
from total_calls;


