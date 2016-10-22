# 04_01-Local Functions

from sort_by_last_letter import sort_by_last_letter
sort_by_last_letter( ['hello','from','a','local','function'] )


from sort_by_last_letter import sort_by_last_letter
sort_by_last_letter( ['ghi','def','abc'] )
sort_by_last_letter( ['ghi','def','abc'] )
sort_by_last_letter( ['ghi','def','abc'] )

g = 'global'
def outer(p='param'):
    l = 'local'
    def inner():
            print(g, p, l)
    inner()

outer()

outer.inner()
#Traceback (most recent call last):
#  File "<stdin>", line 1, in <module>
#AttributeError: 'function' object has no attribute 'inner'
