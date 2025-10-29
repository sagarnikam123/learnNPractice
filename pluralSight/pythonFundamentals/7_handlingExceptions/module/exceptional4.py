# exceptional4.py

################################################################################
""" A module for demonstratig exceptions. """

def convert(s) :
    """ Convert to an integer. """

    x = -1

    try :
        x = int(s)
        print('Conversion succeeded! x = ', x)
    except (ValueError, TypeError) :
        print('Conversion failed!')
    return x

################################################################################
