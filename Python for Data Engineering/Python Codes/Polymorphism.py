#Method Overloading
class MathOperations:
    def add(self, a, b=0, c=0):
        return a + b + c
# Creating an instance of the class
math_ops = MathOperations()
# Calling the add method with different parameter configurations
result1 = math_ops.add(5)
result2 = math_ops.add(2, 3)
result3 = math_ops.add(1, 2, 3)
print(result1)
print(result2)
print(result3)

#Method Overriding
class Animal:
    def speak(self):
        print("Animal speaks")
class Dog(Animal):
    def speak(self):
        print("Dog barks")
class Cat(Animal):
    def speak(self):
        print("Cat meows")
# Creating instances of different classes
dog = Dog()
cat = Cat()
# Using polymorphism with the speak method
def make_animal_speak(animal):
    animal.speak()
make_animal_speak(dog)
make_animal_speak(cat)