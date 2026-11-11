create or refresh streaming table bronze_stream
as
select *
from stream(parking_sessions_source);

create or refresh streaming table silver_stream
as
select *
from stream(bronze_stream)
where status = 'Completed';

create or refresh materialized view gold
as
select 
    zone_id,
    count(*) as total_completed_sessions,
    sum(parking_fee) as total_parking_revenue
from silver_stream
group by zone_id;
