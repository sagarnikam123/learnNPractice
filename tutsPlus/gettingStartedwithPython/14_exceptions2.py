# 14_exceptions

# exception with class

class DinnerError(Exception):
    pass

def makeDinner():
    userInput = raw_input('Please choose a dinner item: ')
    if userInput == 'ice cream' :
        raise DinnerError('Not nutritious enough !')
    if userInput == 'computer':
        raise DinnerError('Not a dinner item')

try:
    makeDinner()
except DinnerError, explanation:
    print 'Error: ',explanation
