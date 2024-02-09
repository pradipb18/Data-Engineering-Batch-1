#Append
numbers = [1, 2, 3]
numbers.append(4)
print(numbers)

#Extend
numbers = [1, 2, 3]
numbers.extend([4, 5, 6])
print(numbers)

#insert
numbers = [1, 2, 3]
numbers.insert(1, 5)
print(numbers)

#Remove
numbers = [1, 2, 3, 2]
numbers.remove(2)
print(numbers)

#pop
numbers = [1, 2, 3]
popped_element = numbers.pop(1)
print(numbers)
print(popped_element)

#Index
numbers = [1, 2, 3, 2]
index = numbers.index(2)
print(index)

#List Slicing
numbers = [1, 2, 3, 4, 5]
# Slice from index 1 to 3 (exclusive)
subset = numbers[1:3]
print(subset)
# Slice from the beginning to index 2 (exclusive)
subset = numbers[:2]
print(subset)
# Slice from index 2 to the end
subset = numbers[2:]
print(subset)
# Slice with a step of 2
subset = numbers[::2]
print(subset)