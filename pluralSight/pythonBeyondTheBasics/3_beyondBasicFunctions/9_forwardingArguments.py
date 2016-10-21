# 03_09-Forwarding Arguments

def trace(f, *args, **kwargs):
    print("args =", args)
    print("kwargs =", kwargs)
    result = f(*args, **kwargs)
    print("result =", result)
    return result

int("ff", base=16)
trace(int, "ff", base=16)
