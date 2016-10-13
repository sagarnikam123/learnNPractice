#print('executing __main__.py  with name {}'.format(__name__))

import sys
import reader

r = reader.Reader(sys.argv[1])
try:
    print(r.read())
finally:
    r.close()
