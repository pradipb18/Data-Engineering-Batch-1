import pandas as pd
# Sorting a DataFrame by Column
data = {'Name': ['Alice', 'Bob', 'Charlie'],
        'Age': [25, 30, 20],
        'Salary': [50000, 60000, 45000]}

df = pd.DataFrame(data)
sorted_df = df.sort_values(by='Age')
print(sorted_df)
# Sorting in Descending Order
sorted_df_desc = df.sort_values(by='Age', ascending=False)
print(sorted_df_desc)

# Sorting by Multiple Columns
sorted_df_multi = df.sort_values(by=['Age', 'Salary'], ascending=[True, False])
print(sorted_df_multi)

# Sorting a Series
ages = pd.Series([25, 30, 20], name='Age')

# Sort the Series
sorted_ages = ages.sort_values()
print(sorted_ages)

sorted_df_index = df.sort_index()
print(sorted_df_index)
