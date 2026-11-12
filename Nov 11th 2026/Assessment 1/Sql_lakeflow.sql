create or refresh streaming table bronze_stream
as
select * from stream(tp_entries_raw);

create or refresh streaming table silver_stream
as
select 
     *,
     ticket_price as ticket_revenue
from stream(bronze_stream)
where status = 'Completed';


create or refresh materialized view gold 
as
select 
    attraction_id,
    count(*) as entry_count,
    sum(ticket_price) as total_revenue
from silver_stream
group by attraction_id;
