import pandas as pd

df = pd.read_csv("data.csv")

print(df)

df.to_csv("df.csv", index=False)
