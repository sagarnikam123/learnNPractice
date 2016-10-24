# enclosing.py
message = 'global'

def enclosing():
    message = 'enclosing'

    def local():
        nonlocal message
        message = 'local'

    print('enclosing message', message)
    local()
    print('enclosing message', message)

print('global message', message)
enclosing()
print('global message', message)
