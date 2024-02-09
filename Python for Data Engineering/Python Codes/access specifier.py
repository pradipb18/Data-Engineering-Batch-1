#Single Underscore '_' (Convention for Protected Attributes and Methods)
class MyClass:
    def __init__(self):
        self._protected_attribute = 42
    def _protected_method(self):
        return "This is a protected method."
# Using protected attributes and methods
obj = MyClass()
print(obj._protected_attribute)
print(obj._protected_method())
#Double Underscore '__' (Name Mangling)
class MyClass:
    def __init__(self):
        self.__private_attribute = "I am private!"
    def __private_method(self):
        return "This is a private method."
# Accessing private attributes and methods
obj = MyClass()
print(obj._MyClass__private_attribute)
print(obj._MyClass__private_method())
class MyClass:                                           #No Underscore (Public)
    def __init__(self):
        self.public_attribute = "I am public!"
    def public_method(self):
        return "This is a public method."

obj = MyClass()
print(obj.public_attribute)
print(obj.public_method())
