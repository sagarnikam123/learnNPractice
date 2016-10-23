# raise_to

def raise_to(exp):
    def raise_to_exp(x):
        return pow(x, exp)
    return raise_to_exp
