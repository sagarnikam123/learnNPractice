# 04_02-Returning Functions From Functions

def enclosing():
    def local_func():
            print('local func')
    return local_func

lf = enclosing()
lf()
