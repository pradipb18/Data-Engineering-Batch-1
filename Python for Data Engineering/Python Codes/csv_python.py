import csv

csv_file_path = r'C:\Users\pmboc\Downloads\Employees.csv'

# Open the CSV file for reading
with open(csv_file_path, 'r') as csv_file:
    # Create a CSV reader object
    csv_reader = csv.DictReader(csv_file)

    # Read and print each row
    for row in csv_reader:
        print(row)

