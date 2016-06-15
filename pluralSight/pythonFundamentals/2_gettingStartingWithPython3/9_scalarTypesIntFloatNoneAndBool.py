# Scalar types int, float, None and bool

################################################################################
# decimal integer
10
# binary (0b prefix)
0b10
# octal
 0o10
# hexadecimal
0x10
# using int constructor
int(3.5)
int(-3.5)
# string to integer
int("496")
# convert from base3
int("10000", 3)

#  float
3.125
# scientific floats
3e8
1.616e-35
# from integer
float(7)
# from string
float("1.168")
# special value floating no
float("nan")
# infinity
float("inf")
float("-inf")
# int + float = float
3.0 + 1

# None (absence of value)
None
a = None
a is None

# boolean (logical value)
True
False
bool(0) # except "Zero", all other values are True
bool(1)
bool(-1)
bool(0.0)
bool(0.207)
bool(-1.217)
bool([])
bool([1,5,9])
bool("")
bool("spam")
bool("False")
bool("True")

################################################################################
