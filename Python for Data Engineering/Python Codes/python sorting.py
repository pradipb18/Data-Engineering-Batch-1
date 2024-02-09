
original_list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
sorted_list = sorted(original_list)
print(sorted_list)

original_list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
original_list.sort()
print(original_list)

words = ["apple", "banana", "cherry", "date"]
sorted_words = sorted(words, key=len)
print(sorted_words)

original_list = [3, 1, 4, 1, 5, 9, 2, 6, 5, 3, 5]
descending_sorted_list = sorted(original_list, reverse=True)
print(descending_sorted_list)

data = [("Alice", 25), ("Bob", 30), ("Charlie", 20)]
sorted_data = sorted(data, key=lambda x: x[0])
print(sorted_data)
