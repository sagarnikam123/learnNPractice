# 08_04-Multiple Input Sequences

sizes = ['small', 'medium', 'large']
colors = ['lavender', 'teal', 'burnt orange']
animals = ['koala', 'platypus', 'salamander']

def combine(size, color, animal):
    return '{} {} {}'.format(size, color, animal)

list(map(combine, sizes, colors, animals))

import itertools
def combine (quantity, size, color, animal):
    return '{} x {} {} {}'.format(quantity, size, color, animal)

list(map(combine, itertools.count(), sizes, colors, animals))
