num = int(input("Enter a number: "))
# Checking if the number is even or odd
if num % 2 == 0:
    print(f"{num} is even.")
else:
    print(f"{num} is odd.")

# if..else chain statement
letter = "A"

if letter == "B":
    print("letter is B")
else:
    if letter == "C":
        print("letter is C")
    else:
        if letter == "A":
            print("letter is A")
        else:
            print("letter isn't A, B and C")

# if-elif statement example
letter = "A"

if letter == "B":
    print("letter is B")
elif letter == "C":
    print("letter is C")
elif letter == "A":
    print("letter is A")
else:
    print("letter isn't A, B or C")
