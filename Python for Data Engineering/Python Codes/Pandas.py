import pandas as pd
import numpy as np

ser = pd.Series()
print("Pandas Series: ", ser)

data = np.array(['H', 'E', 'X', 'A'])
ser = pd.Series(data)
print("Pandas Series: ", ser)

df = pd.DataFrame()
print(df)
# list of strings
lst = ['Python', 'For', 'Python', 'is', 'portal', 'for', 'Python']

df = pd.DataFrame(lst)
print(df)


