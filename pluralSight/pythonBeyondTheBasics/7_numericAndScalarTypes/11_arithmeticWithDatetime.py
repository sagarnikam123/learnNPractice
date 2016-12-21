# 07_11-Arithmetic With datetime

import datetime as dt

a = dt.datetime(year=2014, month=5, day=8, hour=14, minute=22)
a
b = dt.datetime(year=2014, month=3, day=14, hour=12, minute=9)
a - b
d = a - b
d
d.total_seconds()
dt.date.today()
dt.date.today() + dt.timedelta(weeks=1) * 3
