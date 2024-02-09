import json

# Opening JSON file
json_file_path = r"C:\Users\pmboc\Downloads\sample1.json"

with open(json_file_path,'r') as json_file:
    data = json.load(json_file)

    # Print the type of data variable
    print("Type:", type(data))

    print(data)

