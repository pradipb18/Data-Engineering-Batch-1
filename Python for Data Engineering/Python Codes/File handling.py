
# Opening and reading from a file

with open("t1.txt", "r") as file:
    content = file.read()
    print(content)


# Opening and writing to a file

with open("t1.txt", "w") as file:
    file.write("Hello, this is a test.")


# Opening and appending to a file

with open("t1.txt", "a") as file:
    file.write("\nAppending more text.")