# formatting

from datetime import datetime

########################################################################
def main():

    # Times & dates can be formattied using a sets of predefined  string
    #control codes
    now = datetime.now() # get the current date & time

    ### Date formatting ### (control codes)
    # %y/%y - Year, %a/%A - weekday, %b/%B - month, %d - day of month
    # small case shows "abbreviated" & Upper case shows "Full"
    print now.strftime("%Y") # full year with centrury
    print now.strftime("%a, %d, %B, %y") # abbreviated day, num, full month, year
    print " "

    # %c - locale's date & time, %x - locale's date, %X - locale's time
    print now.strftime("%c")
    print now.strftime("%x")
    print now.strftime("%X")
    print " "

    ### Time Formatting ###
    # %I/%H - 12/24 Hour, %M - Minute, %S - Second, %p - locale's AM/PM
    print now.strftime("%I:%M:%S %p") # 12 Hour:Minute:Second:AM/PM
    print now.strftime("%H:%M") # 24 Hour:Minute

########################################################################
if __name__ == "__main__" :
    main()

########################################################################
