# 08_12-Extended iter() Format

import datetime

i = iter(datetime.datetime.now, None)
next(i)
next(i)
next(i)

with open('ending_files.txt', 'rt') as f:
    for line in iter(lambda: f.readline().strip(), 'END'):
        print(line)
