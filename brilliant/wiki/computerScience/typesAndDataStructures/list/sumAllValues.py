from List import List


def sum_list(the_list):
    if not the_list.is_empty():
        return the_list.head() + sum_list(the_list.tail())
    else:
        return 0


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

print(sum_list(some_numbers))
