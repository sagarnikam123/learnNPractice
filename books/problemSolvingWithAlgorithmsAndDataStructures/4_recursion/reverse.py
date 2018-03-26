# reverse.py

def reverseOld(romatic):
    if len(romantic) == 1 :
        return romantic[0]
    else:
        romantic(len(romantic) -1) + reverseOld(romantic[0:len(romantic) -1])
