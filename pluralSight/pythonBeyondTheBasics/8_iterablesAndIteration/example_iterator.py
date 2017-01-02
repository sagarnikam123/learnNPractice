# example_iterator

class ExampleIterator:
    def __init__(self, data):
        self.index = 0
        self.data = data

    def __iter__(self):
        return self

    def __next__(self):
        if self.index >= len(self.data):
            raise StopIteration()

        rslt = self.data[self.index]
        self.index +=1
        return rslt


class ExampleIterable:
    def __init__(self):
        self.data = [1, 2, 3]

    def __iter__(self):
        return ExampleIterator(self.data)
