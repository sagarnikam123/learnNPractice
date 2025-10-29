# exceptional3.py

################################################################################
""" A module for demonstratig exceptions. """

def convert(s) :
    """ Convert to an integer. """
    try :
        x = int(s)
        print('Conversion succeeded! x = ', x)
    except ValueError :
        print('Conversion failed!')
        x = -1
    except TypeError :
        print('Conversion failed!')
        x = -1
    return x

################################################################################
