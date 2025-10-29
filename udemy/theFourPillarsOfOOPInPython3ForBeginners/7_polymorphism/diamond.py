class A:
    def method(self):
        print('This method belongs to class A')

class B(A):
    def method(self):
        print('This method belongs to class B')

class C(A):
    def method(self):
        print('This method belongs to class C')

class D(C, B):
    pass

d = D()
d.method()
