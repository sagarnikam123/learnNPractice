# 21_Iterators

a = ['hey', 'bro', "you'r", 'awesome']
for i in a:
    print(i)
dir(a)

itr = iter(a)
itr

itr
next(itr)
next(itr)
next(itr)
next(itr)
# StopIteration
next(itr)

dir(itr)
################################################################################


class RemoteControl():

    def __init__(self):
        self.channels = ['HBO', 'cnn', 'abc', 'espn']
        self.index = -1

    def __iter__(self):
        return self

    def __next__(self):
        self.index += 1
        if self.index == len(self.channels):
            raise StopIteration
        return self.channels[self.index]


r = RemoteControl()

itr = iter(r)

print(next(itr))
print(next(itr))
print(next(itr))
print(next(itr))
print(next(itr))
