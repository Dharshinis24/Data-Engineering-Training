import pandas as pd
from pandas import read_csv

#36
df = read_csv("Shipments.csv")

#37
print(df.query("status=='Delivered'"))

#38
print(df['status'].value_counts())

#39
df['shipment_date'] = pd.to_datetime(
    df['shipment_date'])

#40
df['month'] = df['shipment_date'].dt.month
print(df[['month','status']].value_counts())

#41
print(df.groupby('destination')['cost'].mean())

#42
print(df.groupby('destination')['weight'].sum())

#43
selected_columns = ['shipment_id','hub_id','destination','status']
print(pd.read_csv("shipments.csv",usecols=selected_columns))

#44
df1 = pd.read_csv("hubs.csv")

#45
result = pd.merge(df,df1,on='hub_id',how='inner')

#46
print(result.groupby('hub_id')['cost'].sum())

#47
print(result.groupby('hub_id')['shipment_id'].count())

#48
print(result.groupby('hub_id')['cost'].sum().sort_values(ascending=True))

#49
result.to_csv("Joined_shipments.csv")

#50
result.to_json("Joined_shipments.json",orient='records',indent=4,date_format='iso')
