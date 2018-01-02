from List import List


def special_add(x, y):
    return x + 2 * y

# specifically, this is a right fold
def fold_list(the_function, the_list):
    if the_list.tail().is_empty():
        return the_list.head()
    else:
        return the_function(the_list.head(), fold_list(the_function, the_list.tail()))


some_numbers = List()
some_numbers.prepend(3)
some_numbers.prepend(3)
some_numbers.prepend(4)
some_numbers.prepend(1)
some_numbers.prepend(7)
some_numbers.prepend(7)
some_numbers.prepend(1)
some_numbers.prepend(4)
some_numbers.prepend(5)
some_numbers.prepend(7)

print(fold_list(special_add, some_numbers))
