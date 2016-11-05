# minimumNumber.py

#######################################################################################################################
#
#   Write two Python functions to find the minimum number in a list. The first function should compare each number
#   to every other number on the list. O(n 2 ). The second function should be linear O(n).
#
#######################################################################################################################

seq = [9, 12, 10, 3,5,2,5,6,7, 0, -1]
def firstMin(seq):
    tempMinNum = seq[0]
    for each in seq:
        for tech in seq:
            if tech < each:
                tempMinNum = tech
    return tempMinNum

print(firstMin(seq))

def secondMin(seq):
    tempMinNum = seq[0]
    for each in seq:
        if each < tempMinNum:
            tempMinNum = each
    return tempMinNum

print(secondMin(seq))
