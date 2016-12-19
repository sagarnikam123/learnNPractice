# 07_07-The datetime Module and date Type

import datetime

datetime.date(2014, 1, 6)
datetime.date(year=2014, month=1, day=6)
datetime.date.today()
datetime.date.fromtimestamp(1000000000)
datetime.date.fromordinal(720669)

d = datetime.date.today()
d.year
d.month
d.day
d.weekday()
d.isoweekday()
d.isoformat()

d.strftime('%A %d %B %Y')
'The date is {:%A %d %B %Y}'.format(d)
e = datetime.date(2014, 1, 6)
e.strftime('%A %-d %B %Y')
'{date:%A} {date.day} {date:%B} {date.year}'.format(date=e)
datetime.date.min
datetime.date.max
datetime.date.resolution
