# 03_04-Conditional Expressions

def sequence_class(immutable):
 return tuple if immutable else list

seq = sequence_class(immutable=False)
s = seq("Nairobi")
s
type(s)
