from List import List


def map(the_function, the_list):
    # return a new list with the_function
    # applied to each element in the_list
    if the_list.tail().is_empty():
        return List()
    else:
        new_list = map(the_function, the_list.tail())
        new_list.prepend(the_function(the_list.head()))
        return new_list


def polynomial(x):
    return 3 * x * x - 5 * x + 1

some_numbers = List()

some_numbers.append(32)
some_numbers.append(57)
some_numbers.append(16)
some_numbers.append(8)
some_numbers.append(38)

# print(some_numbers)
print(map(polynomial, some_numbers ))
