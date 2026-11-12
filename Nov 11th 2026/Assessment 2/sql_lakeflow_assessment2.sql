create or refresh streaming table bronze_stream_table
as
select * from stream(water_meter_readings_source);

create or refresh streaming table silver_stream_table
as
select * from stream(bronze_stream_table)
where reading_status = 'Valid' and 
flow_lpm > 0 and consumption_liters > 0;

create or refresh materialized view gold_assessmanet2
as
select 
    zone_id,
    sum(consumption_liters) as total_consumption,
    avg(pressure_bar) as average_pressure,
    count(*) as total_readings
from silver_stream_table
group by zone_id;