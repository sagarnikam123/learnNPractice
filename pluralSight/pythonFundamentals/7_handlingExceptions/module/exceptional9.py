# exceptional9.py

################################################################################
import sys
from math import log

################################################################################
""" A module for demonstratig exceptions. """

def convert(s) :
    """ Convert to an integer. """

    try :
        return int(s)
    except (ValueError, TypeError) as e:
        print('Conversion error : {} '.format(str(e)),
                file=sys.stderr)
        raise

def string_log(s) :
    v = convert(s)
    return log(v)

################################################################################
