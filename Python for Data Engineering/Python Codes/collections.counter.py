from collections import Counter


# Function to get unique values


def unique(list1):
    # Print directly by using * symbol
    print(*Counter(list1))


# driver code
list1 = [10, 20, 10, 30, 40, 40]
print("the unique values from 1st list is")
unique(list1)

list2 = [1, 2, 1, 1, 3, 4, 3, 3, 5]
print("\nthe unique values from 2nd list is")
unique(list2)


# Using dict.fromkeys()

list1 = [10, 20, 10, 30, 40, 40]

list2 = [1, 2, 1, 1, 3, 4, 3, 3, 5]

# storing the result of the fromkeys()
# operation and converting it into list
unique_list_1 = list(dict.fromkeys(list1))

unique_list_2 = list(dict.fromkeys(list2))

# Printing the final result
print(unique_list_1, unique_list_2, sep="\n")