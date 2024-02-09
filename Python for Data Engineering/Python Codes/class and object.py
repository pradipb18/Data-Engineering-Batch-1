
class Dog:
    def __init__(self, name, age):
        self.name = name
        self.age = age

    def bark(self):
        print(f"{self.name} is barking!")

# Creating an instance (object) of the Dog class
my_dog = Dog(name="Buddy", age=3)

# Accessing attributes and calling methods
print(my_dog.name)
my_dog.bark()
