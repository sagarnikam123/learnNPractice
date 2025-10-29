# 14_exceptions

# try-except-else
try:
    open('files/fakefile')
except IOError:
    print('Unable to open file')
else:
    print('No problem in opening the file')

print('this is important')

# finally
try:
    open('files/fakefile')
except IOError:
    print('Unable to open file')
finally:
    print('cleaning up the code')

# raising exception
def makeDinner():
    userInput = raw_input('Please choose a dinner item: ')
    if userInput == 'ice cream' :
        raise Exception('Not nutritious enough !')
    if userInput == 'computer':
        raise Exception('Not a dinner item')

try:
    makeDinner()
except Exception, explanation:
    print 'Error: ',explanation
