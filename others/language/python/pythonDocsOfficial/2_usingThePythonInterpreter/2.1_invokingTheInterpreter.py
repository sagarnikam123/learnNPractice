# 2.1. Invoking the Interpreter

# Linux
# /usr/local/bin/python3.7
# /usr/bin/python3

# Control-Z - quit python interpreter
quit()

# command line editing - check
# Control-P to the first Python prompt

# starts python directly from command line
# python -c command [arg] ...,
# python -m module [arg] ...,
# python3 -c "print('dfdf')"
# python3 -m timeit '"-".join(str(n) for n in range(100))'
# python3 -m timeit '"-".join([str(n) for n in range(100)])'

# tried but not working
python -m timeit 'print("sdfdsf")'
python3 -m 'sys' -c "sys.argv[0]"
python3 -m 'sys' 'sys.argv[0]'
python -m sys 'print("sdfdsf")'
python -m sys _.py
python -m sys 'print(sys.argv[0])'
python3 -c "import sys;print('dsfdsf')" -i
python3 -c "print('dsfdsf')" -i 'print("dsfsdf")'

# 2.1.2. Interactive Mode
# primary prompt, usually three greater-than signs (>>>)
# for continuation lines it prompts with the secondary prompt, by default three dots (...).
the_world_is_flat = True
if the_world_is_flat:
    print("Be carefull not to fall off!!")

# 2.2.1. Source Code Encoding
# -*- coding: encoding -*-
# -*- coding: cp1252 -*-

#!/usr/bin/env python3
# -*- coding: cp1252 -*-
