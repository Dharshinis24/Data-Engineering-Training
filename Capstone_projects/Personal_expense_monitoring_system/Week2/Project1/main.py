import pandas as pd
import numpy as np

df = pd.read_csv("expenses_messy.csv")

# Clean data
df = df.drop_duplicates(subset="expense_id")
df["category"] = df["category"].str.strip().str.title()
df["amount"] = (df["amount"].astype(str)
                .str.replace(r"[$,\s]", "", regex=True)
                .astype(float))

# Clean dates
iso = pd.to_datetime(df["expense_date"], format="ISO8601", errors="coerce")
other = pd.to_datetime(df["expense_date"], format="mixed", dayfirst=True, errors="coerce")
df["expense_date"] = iso.fillna(other)
print("Unparsed dates:", df["expense_date"].isna().sum())

df["description"] = df["description"].fillna("Unknown")
df["month"] = df["expense_date"].dt.to_period("M")

# Monthly totals and averages using NumPy
rows = []

for month in sorted(df["month"].dropna().unique()):
    amounts = df.loc[df["month"] == month, "amount"].to_numpy()

    rows.append({
        "month": str(month),
        "total": round(np.sum(amounts), 2),
        "average": round(np.mean(amounts), 2),
        "transactions": len(amounts)
    })

summary = pd.DataFrame(rows)
print(summary.to_string(index=False))


# Category-wise totals
print(df.groupby("category")["amount"].sum().round(2))

# Monthly category breakdown
breakdown = df.pivot_table(
    index="month",
    columns="category",
    values="amount",
    aggfunc="sum",
    fill_value=0
).round(2)

print(breakdown)

# Save all files
df.sort_values("expense_id").to_csv("expenses_cleaned.csv", index=False)
summary.to_csv("monthly_summary.csv", index=False)
breakdown.to_csv("category_breakdown.csv")

print("All CSV files saved successfully.")
print("Grand total:", round(df["amount"].sum(), 2))
