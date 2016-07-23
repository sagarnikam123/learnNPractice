# debugging with PDB

################################################################################
import pdb
pdb.set_trace()
help
help continue

# infinite loop
python3 palindrome1.py

python3 -m pdb palindrome1.py
where
next
next
cont
list
return
quit

python3 palindrome2.py
where
next
print(digs)
print(x)
list
next
print(div,mod)
next
print(digs)
list
print(x)
quit
quit
quit

################################################################################
