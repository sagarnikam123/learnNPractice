# ospathutils

import os
from os import path
import datetime
from datetime import date, time, timedelta
import time

########################################################################
def main():
    # print the name of the OS
    print(os.name)
    print

    # check for item existence and type
    print 'Item exists : ' + str( path.exists('textfile.txt') )
    print 'Item is a file : ' + str( path.isfile('textfile.txt') )
    print 'Item is a directory : ' + str( path.isdir('textfile.txt') )
    print

    # work with file paths
    print "Item's path : " + str( path.realpath('textfile.txt') )
    print "Item's path and name : " + str( path.split(path.realpath('textfile.txt')) )
    print

    # Get the modification time
    # print path.getmtime("textfile.txt")
    t = time.ctime( path.getmtime('textfile.txt') )
    print t
    print datetime.datetime.fromtimestamp( path.getmtime('textfile.txt') )
    print

    # Calculate how long ago the item was modified
    td = datetime.datetime.now() - datetime.datetime.fromtimestamp( path.getmtime('textfile.txt') )
    print 'It has been ' + str(td) + ' The file was modified.'
    print 'Or ' + str(td.total_seconds()) + ' seconds.'

########################################################################
if __name__ == '__main__':
    main()

########################################################################
