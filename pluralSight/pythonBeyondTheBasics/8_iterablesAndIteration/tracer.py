class Trace:

    def __init__(self):
        self.enabled = True

    def __cal__(self, f):
        def wrap(*args, **kwargs):
            if self.enabled:
                print('Calling {}'.format(f))
            return f(*args, **kwargs)
        return wrap
