# checking class types and instances

class Book:
    def __init__(self, title):
        self.title = title

class Newspaper:
    def __init__(self, name) -> None:
        self.name = name


# create some instances of the classes
b1 = Book('The Catcher In The Rye')
b2 = Book('The Grapes of Wrath')
n1 = Newspaper('The Washington Post')
n2 = Newspaper('The New York Times')

# TODO: use type() to inspect the object type
print(type(b1))
print(type(n1))

# TODO: compare two types together
print('b1 == b2', type(b1) == type(b2))
print('b1 == n2', type(b1) == type(n2))

# TODO: use isinstace to compare a specific instance to a known type
print('isinstance b1 -> Book',isinstance(b1, Book))
print('isinstance n1 -> Newspaper',isinstance(n1, Newspaper))
print('isinstance n2 -> Book',isinstance(n2, Book))
print('isinstance n2 -> object',isinstance(n2, object))
