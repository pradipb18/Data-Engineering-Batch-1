#Break Statement

for i in range(1, 5):
# second for loop
    for j in range(2, 6):

        # break the loop if
        # j is divisible by i
        if j % i == 0:
            break

        print(i, " ", j)

#Continue Statement
for i in range(1, 11):


    if i == 6:
        continue
    else:
        # otherwise print the value
        # of i
        print(i, end=" ")


#Pass Statement

s = "geeks"
# Empty loop
for i in s:
    # No error will be raised
    pass