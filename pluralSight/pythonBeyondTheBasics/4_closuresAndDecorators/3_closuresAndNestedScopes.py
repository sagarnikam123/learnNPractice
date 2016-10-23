# 04_03-Closures and Nested Scopes

def enclosing():
    x = 'closed over'
    def local_func():
            print(x)
    return local_func

lf = enclosing()
lf()
lf.__closure__
