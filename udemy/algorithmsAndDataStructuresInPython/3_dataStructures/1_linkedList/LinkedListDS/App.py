from LinkedListDS.LinkedList import LinkedList;

linkedList = LinkedList();

# inserting
linkedList.insertEnd(12);
linkedList.insertEnd(122);
linkedList.insertEnd(3);
linkedList.insertStart(31);

# traversing I
linkedList.traverseList();

print("============ going to remove ============")

# removing
linkedList.remove(12);

# traversing II
linkedList.traverseList();