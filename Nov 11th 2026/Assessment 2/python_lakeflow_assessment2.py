from pyspark import pipelines as dp
from pyspark.sql import functions as F
@dp.table(name="bronze_python")
def bronze_python():
    return (
        spark.readStream.table("water_meter_readings_source")
    )

@dp.table(name="silver_python")
def silver_python():
    return (
        spark.readStream.table("bronze_python")
        .filter(
            (F.col("reading_status") == "Valid") &
            (F.col("flow_lpm") > 0) &
            (F.col("consumption_liters") > 0)
        )
    )

@dp.materialized_view(name="gold_python")
def gold_python():
    return (
        spark.read.table("silver_python")
        .groupBy("zone_id")
        .agg(
            F.sum("consumption_liters").alias("total_consumption"),
            F.avg("pressure_bar").alias("average_pressure"),
            F.count("*").alias("total_readings")
        )
    )
