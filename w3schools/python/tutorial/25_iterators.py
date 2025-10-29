# Iterators

# Return an iterator from a tuple, and print each value
fruits_tuple = ('apple', 'banana', 'cherry')  # tuple
fruits_it = iter(fruits_tuple)
print(next(fruits_it))
print(next(fruits_it))
print(next(fruits_it))
print(next(fruits_it))

# Strings are also iterable objects, containing a sequence of characters
banana_str = 'banana'
banana_iter = iter(banana_str)
print(next(banana_iter))
print(next(banana_iter))
print(next(banana_iter))
print(next(banana_iter))
print(next(banana_iter))
print(next(banana_iter))
###############################################################################
# Looping Through an Iterator

# Iterate the values of a tuple
fresh_tuple = ('apple', 'banana', 'cherry')
for fru_fresh in fresh_tuple:
    print(fru_fresh)

# Iterate the characters of a string
simple_str = 'banana'
for b_str in simple_str:
    print(b_str)
###############################################################################
# Create an Iterator

# Create an iterator that returns numbers, starting with 1, and
# each sequence will increase by one (returning 1,2,3,4,5 etc.)


class MyNumbers:
    def __iter__(self,):
        self.a = 1
        return self

    def __next__(self):
        x = self.a
        self.a += 1
        return x


num_class = MyNumbers()
num_iter = iter(num_class)
print(next(num_iter))
print(next(num_iter))
print(next(num_iter))
print(next(num_iter))
print(next(num_iter))
###############################################################################
# StopIteration

# Stop after 20 iterations


class StopTrain(object):
    def __iter__(self):
        self.a = 1
        return self

    def __next__(self):
        if self.a <= 20:
            x = self.a
            self.a += 1
            return x
        else:
            raise StopIteration


halt_train = StopTrain()
halted_chain = iter(halt_train)
for bogie in halted_chain:
    print(bogie)
###############################################################################
