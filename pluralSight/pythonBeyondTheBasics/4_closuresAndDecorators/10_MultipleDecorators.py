# 04_10-Multiple Decorators

from island_maker import norwegian_island_maker
norwegian_island_maker('Llama')
norwegian_island_maker('Python')
norwegian_island_maker('Troll')

from island_maker import tracer
tracer.enabled = False
norwegian_island_maker('Llama')
norwegian_island_maker('Python')
norwegian_island_maker('Troll')
