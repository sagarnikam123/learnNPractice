"""demonstrates scoping"""
count = 0

def show_count():
    print('count = ', count )

def set_count(c):
    count = c

def set_count(c):
    global count
    count = c
