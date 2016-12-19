# 07_08-The time Type

import datetime

datetime.time(3)
datetime.time(3, 1)
datetime.time(3, 1 , 2)
datetime.time(3, 1 , 2, 232)
datetime.time(hour=23, minute=59,second=59,microsecond=999999)

t = datetime.time(10, 32, 47, 675623)
t.hour
t.minute
t.second
t.microsecond

t.isoformat()
t.strftime('%Hh%Mn%Ss')
'{t.hour}h {t.minute}m {t.second}s'.format(t=t)
datetime.time.max
datetime.time.min
datetime.time.resolution
