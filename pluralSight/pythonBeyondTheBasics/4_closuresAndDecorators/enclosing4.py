# enclosing.py
# SyntaxError: no binding for nonlocal 'no_such_name' found

message = 'global'

def enclosing():
    message = 'enclosing'

    def local():
        nonlocal no_such_name
        message = 'local'

    print('enclosing message', message)
    local()
    print('enclosing message', message)

print('global message', message)
enclosing()
print('global message', message)
