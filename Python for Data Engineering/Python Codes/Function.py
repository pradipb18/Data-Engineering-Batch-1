
#factorial
def factorial(n):

    if n == 0 or n == 1:
        return 1
    else:
        return n * factorial(n - 1)

result = factorial(5)
print(result)

#lambda function

multiply = lambda x, y: x * y
result = multiply(3, 4)
print(result)
