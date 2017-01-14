# sorted_set

class SortedSet:
    def __init__(self, items=None):
        self._items = sorted(items) if items is not None else []
