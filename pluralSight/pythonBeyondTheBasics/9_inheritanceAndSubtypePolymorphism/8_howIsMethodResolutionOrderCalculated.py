# 09_08-How is Method Resolution Order Calculated

class A : pass

class B(A) : pass

class C(A) : pass

# TypeError: Cannot create a consistent method resolution
# order (MRO) for bases A, C
class D(B, A, C) : pass
