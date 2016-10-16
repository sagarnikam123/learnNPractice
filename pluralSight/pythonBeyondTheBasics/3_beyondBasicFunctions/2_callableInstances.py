# 03_02-Callable Instances

from resolver import Resolver
resolve = Resolver()
resolve('localhost')
resolve.__call__('localhost')
resolve._cache
resolve('sixty-north.com')
resolve.__call__('sixty-north.com')
resolve._cache
resolve('pluralsight.com')
resolve._cache


from timeit import timeit
timeit(setup='from __main__ import resolve', stmt="resolve('localhost')", number=1)
timeit(setup='from __main__ import resolve', stmt="resolve('localhost')", number=1)

timeit(setup='from __main__ import resolve', stmt="resolve('python.org')", number=1)
timeit(setup='from __main__ import resolve', stmt="resolve('python.org')", number=1)
print("{:f}".format(_))
exit()

from resolver import Resolver
resolve = Resolver()
resolve.has_host('localhost')
resolve('localhost')
resolve.has_host('localhost')

resolve.clear()
resolve.has_host('localhost')
resolve.has_host('pluralsight.com')
resolve('pluralsight.com')
resolve.has_host('pluralsight.com')
resolve.clear()
resolve.has_host('pluralsight.com')
