import pandas as pd
import numpy as np

#section H - pandas join and aggregation

customers_df = pd.read_csv("customers.csv")
orders_df = pd.read_csv("orders.csv")

#75
result = pd.merge(customers_df,orders_df,on='customer_id',how='inner')
print(result)
result['order_value'] = result['unit_price'] * result['quantity']


#76
print(result)
print(result[['customer_id','customer_name','city','product','status','order_value']])

#77
print(result.query("status == 'Delivered' and city=='Hyderabad'"))

#78
print(result.groupby('city')['order_id'].count())
print(result.groupby('city')['order_value'].sum())
print(result.groupby('city')['order_value'].mean())


#79
city_sales_summary = result.groupby('city')['order_value'].sum().sort_values(ascending=False)

#80
city_sales_summary.to_csv("city_sales_summary.csv")

#81
city_sales_summary.to_json("city_sales_summary.json",orient='records',indent=4)

#82
result['order_size'] = np.select(
    [
        result['order_value'] >= 50000,
        result['order_value'] >= 15000
    ],
    [
        'High',
        'Low'
    ],
    default = 'Low'
)

#83
result['priority_customer'] = np.where(
    result['segment'] == 'Corporate',
    "Priority",
    "Normal"
)

#84
result.to_csv("enriched_orders.csv")