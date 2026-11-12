from pyspark import pipelines as dp
from pyspark.sql.functions import col, sum, count
@dp.table(name='bronze_layer')
def bronze_layer():
    return(
        spark.readStream.table("main.default.tp_entries_raw")
    )

@dp.table(name='silver_layer')
def silver_layer():
    return(
        spark.readStream.table('bronze_layer').filter(
            col('status') == 'Completed'
        ).withColumn(
            'ticket_revenue',
            col('ticket_price')
        )
    )

@dp.materialized_view(name='glod_layer')
def gold_layer():
    return(
        spark.read.table('silver_layer').groupBy(
            col('attraction_id')
        ).agg(
            count('*').alias('entry_count'),
            sum(col('ticket_revenue')).alias('total_revenue')
        )
    )