import csv

with open(r'C:\Users\pmboc\Downloads\Employees.csv') as csvfile:
    # Return a reader object which will
    # iterate over lines in the given csvfile.
    readCSV = csv.reader(csvfile, delimiter=',')
    for row in readCSV:
        print(row)
        print(row[0])
        print(row[0], row[1], row[2], )
        print("\n")