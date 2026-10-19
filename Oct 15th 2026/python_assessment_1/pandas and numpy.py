import pandas as pd
import numpy as np

df = pd.read_csv("shipments.csv")

#51
df['cost_per_kg'] = df['cost']/df['weight']

#52
df['cost_category'] = np.where(
    df['cost'] >= 1200,
    "Expensive",
    "Normal"
)

#53
condition = [
    (df['status'] == "Delivered") & (df['cost'] < 1200),
    (df['status'] == "Delivered") & (df['cost'] >= 1200),
    (df['status']=='In Transit')
]
categories = [
    "Good performance",
    "Delivered - High cost",
    "In Transit"
]
df["performance_category"] = np.select(
    condition,
    categories,
    default="Other"
)

#54
df.to_csv("Sjipment_analysis.csv")
print("File saved")