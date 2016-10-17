# 03_03-Classes Are Callable

from resolver import Resolver
Resolver
resolve = Resolver()
resolve

def sequence_class(immutable):
    if immutable:
        cls = tuple
    else:
        cls = list
    return cls

seq = sequence_class(immutable=True)
seqp
t = seq("Timbuktu")
t
type(t)
