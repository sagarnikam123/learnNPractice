# Lists

#######################################################################################################################
#
#   Consider a list (list = []). You can perform the following commands:
#
#   insert i e: Insert integer e at position i.
#   print: Print the list.
#   remove e: Delete the first occurrence of integer e.
#   append e: Insert integer e at the end of the list.
#   sort: Sort the list.
#   pop: Pop the last element from the list.
#   reverse: Reverse the list.
#   Initialize your list and read in the value of n followed by n lines of commands where each command will be of the
#   types listed above. Iterate through each command in order and perform the corresponding operation on your list.
#
#   Input Format
#   The first line contains an integer n, denoting the number of commands.
#   Each line i of the n subsequent lines contains one of the commands described above.
#
#   Constraints
#   The elements added to the list must be integers.
#
#   Output Format
#   For each command of type print, print the list on a new line.
#
#   Sample Input
#   12
#   insert 0 5
#   insert 1 10
#   insert 0 6
#   print
#   remove 6
#   append 9
#   append 1
#   sort
#   print
#   pop
#   reverse
#   print
#
#   Sample Output
#   [6, 5, 10]
#   [1, 5, 9, 10]
#   [9, 5, 1]
#
#######################################################################################################################

n = int(input().strip())

holyList = list()

for z in range(n):
    collectedLine = input().strip().split(' ')
    #print(collectedLine)
    if collectedLine[0] == 'insert':
        holyList.insert(int(collectedLine[1]),int(collectedLine[2]))
    elif collectedLine[0] == 'reverse':
        holyList.reverse()
    elif collectedLine[0] == 'remove':
        holyList.remove(int(collectedLine[1]))
    elif collectedLine[0] == 'append':
        holyList.append(int(collectedLine[1]))
    elif collectedLine[0] == 'sort':
        holyList.sort()
    elif collectedLine[0] == 'pop':
        holyList.pop()
    else:
        print(holyList)
