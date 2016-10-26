# 04_09-Instances as Decorators

from tracer import rotate_list, tracer
l = [1,2,3]
l = rotate_list(l)
l
l = rotate_list(l)
l

tracer.enabled = False
l = rotate_list(l)
l
l = rotate_list(l)
l
