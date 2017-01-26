# 11_03-Exception Payloads

from median import *

median([5, 1, 2, 4, 3])
median([5, 2, 1, 4, 3, 6])
# IndexError: list index out of range
median([])

# ValueError: mean() arg is an empty sequence
median([])

python3 median.py
#Payload: ('mean() arg is an empty sequence',)
#mean() arg is an empty sequence

python3 unicode.py
#'utf-8' codec can't decode byte 0x81 in position 0: invalid start byte
#encoding: utf-8
#reason: invalid start byte
#object: b'\x81'
#start: 0
#end: 1
