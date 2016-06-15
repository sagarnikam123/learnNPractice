# dates

########################################################################
from datetime import date
from datetime import time
from datetime import datetime

########################################################################
def main():

    ## DATE OBJECTS
    # Get today's date from the simple today() method from the date class
    today = date.today()
    print "Today's date is", today

    #print out the date's individual components
    print "Date components: ", today.day, today.month, today.year

    # retrieve today's weekday (0=Monday, 6=Sunday)
    print "Today's weekday #: ", today.weekday()
    print " "

    # DATETIME OBJECTS
    # Get today's date from datetime class
    today = datetime.now()
    print "The current date & time is : ", today

    #Get the current time
    t = datetime.time(datetime.now())
    print "The current time is :", t

    #weekday return 0 (Monday) through 6 (Sunday)
    wd = date.weekday(today)
    # Days starts at 0 for Monday
    days = ["monday", "tuesday", "wedneday", "thursday", "friday", "saturday", "sunday"]
    print "Today is day number ", wd
    print "Which is a " + days[wd]
    print " "

########################################################################
if __name__ == "__main__" :
    main()

########################################################################
