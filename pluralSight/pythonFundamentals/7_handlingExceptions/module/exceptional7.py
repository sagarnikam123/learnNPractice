# exceptional7.py

################################################################################
import sys

################################################################################
""" A module for demonstratig exceptions. """

def convert(s) :
    """ Convert to an integer. """

    try :
        return int(s)
    except (ValueError, TypeError) as e:
        print("Conversion error : {} "\
                .format(str(e)),
                file=sys.stderr
        )
    return -1

################################################################################
