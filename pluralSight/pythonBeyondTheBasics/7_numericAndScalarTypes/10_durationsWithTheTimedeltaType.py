# 07_10-Durations With the timedelta Type

import datetime as dt
dt.timedelta(milliseconds=1, microseconds=1000)
td = dt.timedelta(weeks=1, minutes=2, milliseconds=5500)
td
td.days
td.seconds
td.microseconds
str(td)
repr(td)
