# noop2.py
import functools

def noop(f):
    @functools.wraps(f)
    def noop_wrapper():
        return (f)
    return noop_wrapper

@noop
def hello():
    "Print a well-known message."
    print("Hello, world!")
