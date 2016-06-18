# exceptional6.py

################################################################################
""" A module for demonstratig exceptions. """

def convert(s) :
    """ Convert to an integer. """

    x = -1
    try :
        x = int(s)
    except (ValueError, TypeError) :
        pass
    return x

################################################################################
