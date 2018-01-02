# List

class Node(object):
    def __init__(self, value, next_node = None):
        self.value = value
        self.next_node = next_node


class List(object):
    def __init__(self, head_node = None):
        self.head_node = head_node

    # this isn't strictly required, just allows the list to be printed
    def __str__(self):
        result = '['
        current_node = self.head_node
        is_first = True
        while current_node:
            if is_first:
                is_first = False
            else:
                result += ','
            result += str(current_node.value)
            current_node = current_node.next_node
        result += ']'
        return result

    def head(self):
        return self.head_node.value

    def tail(self):
        if self.is_empty():
            raise Exception('An empty list does not have a tail.')
        else:
            return List(self.head_node.next_node)

    # note that this is O(1)
    def prepend(self, value):
        new_head_node = Node(value, self.head_node)
        self.head_node = new_head_node

    # note that this is O(n)
    def append(self, value):
        new_node = Node(value)
        if self.is_empty():
            self.head_node = new_node
        else:
            last_node = self.head_node

            while last_node.next_node:
                last_node = last_node.next_node

            last_node.next_node = new_node

    def is_empty(self):
        return self.head_node is None
