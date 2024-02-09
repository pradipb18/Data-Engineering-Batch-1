import pandas as pd

# Specify the CSV file path
csv_file_path = r'C:\Users\pmboc\Downloads\Employees.csv'

# Read CSV into a DataFrame
df = pd.read_csv(csv_file_path)

# Display the DataFrame
print(df)

print(df.columns)

print(df.Name)