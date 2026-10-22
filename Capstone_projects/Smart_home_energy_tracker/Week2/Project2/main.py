import pandas as pd
import numpy as np

df = pd.read_csv("energy_logs.csv")
print(df.isnull().sum())

# Handling missing data
df["energy_kwh"] = pd.to_numeric(df["energy_kwh"], errors="coerce")
df["recorded_at"] = pd.to_datetime(df["recorded_at"], errors="coerce")

# remove extra spaces and fix capital letters in room names
df["room_name"] = df["room_name"].str.strip().str.title()

# remove rows that have empty values
df["device_id"] = pd.to_numeric(df["device_id"], errors="coerce")
df = df.dropna(subset=["device_id", "energy_kwh", "recorded_at"])
df["device_id"] = df["device_id"].astype(int)

# Remove negative and extreme readings
df = df[(df["energy_kwh"] >= 0) & (df["energy_kwh"] <= 10)]

# remove duplicate readings
df = df.drop_duplicates(subset=["device_id", "recorded_at"])

print("rows after cleaning:", len(df))
df.to_csv("energy_usage_cleaned.csv", index=False)

# total and average energy for each device (numpy)
result = []
for device_id in df["device_id"].unique():
    data = df[df["device_id"] == device_id]
    energy = np.array(data["energy_kwh"])
    result.append({
        "device_id": device_id,
        "device_name": data["device_name"].iloc[0],
        "total_kwh": round(np.sum(energy), 4),
        "average_kwh": round(np.mean(energy), 4)
    })

device_summary = pd.DataFrame(result)
device_summary = device_summary.sort_values("total_kwh", ascending=False)
print(device_summary)

# room level summary (pandas)
room_summary = df.groupby(["room_id", "room_name"])["energy_kwh"].agg(["sum", "mean"])
room_summary = room_summary.round(4).reset_index()
print(room_summary)

# save the results
device_summary.to_csv("device_summary.csv", index=False)
room_summary.to_csv("room_summary.csv", index=False)
