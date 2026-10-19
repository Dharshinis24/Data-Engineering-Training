import pandas as pd
#80
df = pd.read_csv("registrations.csv")

#81
#i
print("First 5 row")
print(df.head())
#ii
print("Last 5 rows")
print(df.tail())
#iii
print("Shape")
print(df.shape)
#iv
print("Columns")
print(df.columns)
#v
print("Data type")
print(df.dtypes)

#82
print(df[['attendee_name','city','status','amount']])

#83
print("Confirmed registrations")
print(df.query("status=='Confirmed'"))

#84
print("Registrations above 6000")
print(df.query("amount > 6000"))

#85
print("Confirmed regidtrations from hyderabad")
print(df.query("status=='Confirmed'" and "city=='Hyderabad'"))

#86
print("Count registrations by status")
print(df.groupby('status').size())

#87
print("Total amount by status")
print(df.groupby('status')['amount'].sum())

#88
print("Average amount by city")
print(df.groupby('city')['amount'].mean())
