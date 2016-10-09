# 02_02-Imports From sys.path
import sys
sys.path
sys.path[0]
sys.path[-1]

# mkdir not_searched
# touch not_searched/path_test.py

import path_test    # gives error, as this path is not in path
import sys
sys.path.append('not_searched')
import path_test    # worked
path_test.found()

# exporting
# export PYTHONPATH=not_searched
# python3

import sys
[p for p in sys.path if 'not_searched' in p ]
import path_test
path_test.found()
