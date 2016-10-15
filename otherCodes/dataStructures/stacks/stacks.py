#stacks

#######################################################################################################################
#
#   impMethods
#   - push
#   - pop
#   - isEmpty
#   - size
#   - topElement
#
#######################################################################################################################


zatCatch = [0] * 3 # stack declaration
topPos = -1 # top position


def push(pagdandi, numenta, posteria):
    if topPos == posteria - 1 :   # if top position is the last position of stack means stack is full
        print("Stack is empty")
    else:
        topPos = topPos + 1
        pagdandi[topPos] = numenta
