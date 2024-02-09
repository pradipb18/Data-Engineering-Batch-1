
import pandas as pd

# creating a data frame
filename = r'C:\Users\pmboc\Downloads\Employees.csv'

df = pd.read_csv(filename)
print(df.head())