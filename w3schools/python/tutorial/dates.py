# Dates - datetime

###############################################################################
# Dates

import pytz
import datetime
x = datetime.datetime.now()
print(x)
###############################################################################
# Date Output

# Return the year and name of weekday
xtime = datetime.datetime.now()
print(xtime.year)  # year
print(xtime.strftime('%A'))  # weekday
###############################################################################
# Creating Date Objects

# year, month, day
urdate = datetime.datetime(2022, 12, 1)
print(urdate)
# hour, minute, second, microsecond, tzone)
print(pytz.all_timezones)
# Asia/Kolkata or Asia/Calcutta
full_dt = datetime.datetime(2022, 6, 25, 12, 15, 10,
                            0, pytz.timezone('Asia/Kolkata'))
print(full_dt)
###############################################################################
# The strftime() Method

# for formatting date objects into readable strings
every_date = datetime.datetime(2022, 9, 9)
print(every_date.strftime('%B'))  # name of the month
every_date = datetime.datetime(2022, 9, 9)
print(every_date.strftime('%Z'))  # timezone
###############################################################################
