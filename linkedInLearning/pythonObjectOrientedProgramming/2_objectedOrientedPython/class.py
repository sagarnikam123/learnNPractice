# Using class-level and static methods

class Book:
    # TODO: properties defined at the class level are shared by all instances
    BOOK_TYPES = ("HARDCOVER", "PAPERBACK", "EBOOK")

    # TODO: double-underscore properties are hidden from other classes
    __booklist = None

    # TODO: create a class method
    @classmethod
    def getbooktypes(cls):
        return cls.BOOK_TYPES

    # TODO: create a static method
    @staticmethod
    def getbooklist():
        if Book.__booklist == None:
            Book.__booklist = []
        return Book.__booklist

    # instance method receive a specific object instance as an argument
    # and operate on data specific to that objec instance
    def set_title(self, newtitle):
        self.title = newtitle

    def __init__(self, title, booktype):
        self.title = title
        if (not booktype in Book.BOOK_TYPES):
            raise ValueError(f'{booktype} is not a valid book type')
        else:
            self.booktype = booktype

# TODO: access the class attribute
print("Book types: ", Book.getbooktypes())

# # TODO: create some book instances
b1 = Book("Title 1", "HARDCOVER")
# ValueError: COMIC is not a valid book type
# b2 = Book("Title 2", "COMIC")
b2 = Book("Title 2", "PAPERBACK")

# TODO: use the static method to access a singleton object
thebooks = Book.getbooklist()
thebooks.append(b1)
thebooks.append(b2)
print(thebooks)
