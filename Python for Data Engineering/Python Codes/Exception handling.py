

try:
    x = int(input("Enter a number: "))
    result = 10 / x
    print("Result:", result)

except ZeroDivisionError:
    print("Cannot divide by zero.")

except ValueError:
    print("Invalid input. Please enter a number.")

else:
    print("No exception occurred.")

finally:
    print("This block always executes.")