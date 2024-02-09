fruits = {"apple", "banana", "orange", "apple"}

# Note: Duplicate elements are automatically removed in sets
print(fruits)

#Set Methods

#add
fruits.add("grape")
print(fruits)

#remove
fruits.remove("banana")
print(fruits)

#discard
fruits.discard("banana")
print(fruits)

#union
more_fruits = {"kiwi", "apple", "pear"}
combined_set = fruits.union(more_fruits)
print(combined_set)

#intersection
common_set = fruits.intersection(more_fruits)
print(common_set)

#clear
fruits.clear()
print(fruits)
