#While Loop
count = 5
while count > 0:
    print(count)
    count -= 1

# If-Elif-Else Statements

score = int(input("Enter your score: "))
if score >= 90:
    grade = 'A'
elif score >= 80:
    grade = 'B'
elif score >= 70:
    grade = 'C'
elif score >= 60:
    grade = 'D'
else:
    grade = 'F'
print(f"Your grade is {grade}")

#For Loop

fruits = ["apple", "banana", "orange", "grape"]
for fruit in fruits:
    print(fruit)

#Nested Loops

for i in range(1, 4):
    for j in range(1, i + 1):
        print("*", end=" ")
    print()

