import pandas as pd

df = pd.read_csv("orders.csv")

#value_counts --- (group by automatically)
print(df["status"].value_counts())

#group by
print(df.groupby("status").size())

#string to date
df["order_date"] = pd.to_datetime(
    df["order_date"]
)
df["month"] = df["order_date"].dt.month
print(df)