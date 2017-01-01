# 08_08-Combining map() and reduce()

from map_reduce import count_words
count_words('It was the best of times, it was the worst of times.')

from functools import reduce
from map_reduce import combine_counts, counts
total_counts = reduce(combine_counts, counts)
total_counts
