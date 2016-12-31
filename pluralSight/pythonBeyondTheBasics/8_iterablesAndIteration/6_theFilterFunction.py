# 08_06-The filter() Function

positives = filter(lambda x: x >0, [1, -5, 0, 6, -2, 8])
positives
list(positives)

trues = filter(None, [0, 1, False, True, [], [1, 2, 4], '', 'hello'])
list(trues)
