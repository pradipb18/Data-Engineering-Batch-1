import csv

# Specify the CSV file path
csv_file_path = r'C:\Users\pmboc\Downloads\Employees.csv'

# Sample data to write to the CSV file
data_to_write = [
    ['Name', 'Age', 'Country'],
    ['John', 25, 'USA'],
    ['Alice', 30, 'Canada'],
    ['Bob', 22, 'UK']
]

# Open the CSV file for writing
with open(csv_file_path, 'w', newline='') as csv_file:
    # Create a CSV writer object
    csv_writer = csv.writer(csv_file)

    # Write the header
    csv_writer.writerow(data_to_write[0])

    # Write the data rows
    for row in data_to_write[1:]:
        csv_writer.writerow(row)

print(f'CSV file "{csv_file_path}" has been successfully created.')

with open(csv_file_path, 'r') as csv_file:
    # Create a CSV reader object
    csv_reader = csv.DictReader(csv_file)

    # Read and print each row
    for row in csv_reader:
        print(row)
