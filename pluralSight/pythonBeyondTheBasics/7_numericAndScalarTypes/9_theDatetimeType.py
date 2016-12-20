# 07_09-The datetime Type

from datetime import datetime
datetime.time
from datetime import datetime as Datetime
import datetime as dt
dt.time
Datetime.time

dt.datetime(2003, 5, 12, 14, 33, 22, 245323)
dt.datetime.today()
dt.datetime.now()
dt.datetime.utcnow()
dt.datetime.fromordinal(5)
dt.datetime.fromtimestamp(3635352)
dt.datetime.utcfromtimestamp(3635352)

d = dt.date.today()
d
t = dt.time(8, 15)
t
dt.datetime.combine(d, t)


dt = dt.datetime.strptime('Monday 6 January 2014, 12:13:31',
                    '%A %d %B %Y, %H:%M:%S' )
dt
dt.date()
dt.time()
dt.day
dt.isoformat()
