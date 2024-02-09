person = {"name": "John", "age": 30, "city": "New York"}

# Accessing values
print(person["name"])
print(person["age"])

#Dictionary Methods
#get
age = person.get("age")
print(age)

#keys
keys_list = person.keys()
print(keys_list)

#values
values_list = person.values()
print(values_list)

#items
items_list = person.items()
print(items_list)

#update
person.update({"age": 31, "occupation": "Engineer"})
print(person)

#pop

city = person.pop("city")
print(city)
print(person)
