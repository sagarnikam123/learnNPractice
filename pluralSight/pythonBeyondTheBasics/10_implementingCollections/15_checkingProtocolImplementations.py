# 10_15-Checking Protocol Implementations

from collections.abc import *

issubclass(list, Sequence)
issubclass(list, Sized)
issubclass(dict, Mapping)
issubclass(dict, Sized)
issubclass(dict, Iterable)
