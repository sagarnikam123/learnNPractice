# 07_12-Time Zones

import datetime as dt

cet =  dt.timezone(dt.timedelta(hours=1), 'CET')
cet
departure = dt.datetime(year=2014, month=1, day=7,
                        hour=11, minute=30, tzinfo=cet)
arrival = dt.datetime(year=2014, month=1, day=7,
                      hour=13, minute=5,
                      tzinfo=dt.timezone.utc)
arrival - departure
str(arrival - departure)
