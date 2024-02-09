import json

# JSON string
json_string = '{"Name": "Suezen", "age": 23, "Course": "DSA"}'

# Convert JSON string to dictionary
json_dict = json.loads(json_string)

print(json_dict)