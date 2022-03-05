# Abstract Base Class Definition
import abc

class MyABC(object):
    """Abstract Base Class Definition"""
    __metaclass__ = abc.ABCMeta

    @abc.abstractmethod
    def do_something(self, value):
        """Required Method"""

    @abc.abstractproperty
    def some_property(self):
        """Required property"""


# Concrete class Implementation
class MyClass(MyABC):
    """Implementation of MyABC"""

    def __init__(self, value=None):
        self._myprop = value

    def do_something(self, value):
        """Implementation of abstract method"""
        self._myprop *= 2 + value
        return self._myprop

    @property
    def some_property(self):
        """Implementation of abstract property"""
        return self._myprop



my_class = MyClass(5)
print(my_class.do_something(2))
print(my_class.some_property)
