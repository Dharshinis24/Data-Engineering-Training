import pandas as pd

#61
df = pd.read_csv("orders.csv")

#62
print(df.head())

#63
df.info()

#64
print(df.shape)

#65
delivered_order = df.query("status == 'Delivered'")
print(delivered_order)

#66
quantity_gt2 = df.query("quantity > 2")
print(quantity_gt2)

#67
df["order_value"] = df['quantity'] * df['unit_price']
print(df.head())

#68
print(df['status'].value_counts())

#69
df['order_date'] = pd.to_datetime(df['order_date'])

#70
df['month'] = df['order_date'].dt.month
print(df)

#71
print(df.groupby(['month','status']).size())

#72
print(df.groupby('category')['order_value'].sum())

#73
print(df.groupby('category')['order_value'].mean())

#74
print(df.sort_values('order_value', ascending=False))