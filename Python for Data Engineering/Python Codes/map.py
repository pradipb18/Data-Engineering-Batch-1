numbers = [1, 2, 3, 4, 5]
def square(x):
    return x ** 2

# Apply the square function to each element using map
squared_numbers = map(square, numbers)
result_list = list(squared_numbers)
print(result_list)

# Using lambda function
numbers = [1, 2, 3, 4, 5]

# Use a lambda function to square each element
squared_numbers = map(lambda x: x** 2, numbers)
result_list = list(squared_numbers)
print(result_list)
