# Iteration protocols

################################################################################
iterable = ['Spring', 'Summer', 'Autumn', 'Winter']
iterator = iter(iterable)
iterator
type(iterator)
next(iterator)
next(iterator)
next(iterator)
next(iterator)
# StopIteration
next(iterator)

def first(iterable) :
    iterator = iter(iterable)
    try :
        return next(iterator)
    except StopIteration :
        raise ValueError("iterable is empty")

first(["1st", '2nd', '3rd'])
first(["1st", '2nd', '3rd'])
# ValueError: iterable is empty
first(set())

################################################################################
