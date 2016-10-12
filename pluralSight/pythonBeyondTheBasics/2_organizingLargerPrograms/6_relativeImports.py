# 02_06-Relative Imports
from reader.reader import Reader
from .reader import Reader

#   my_package/
#   |_ __init__.py
#   |_ a.py
#   |_ nested/
#       |_ __init__.py
#       |_ b.py
#       |_ c.py

from ..a import A
from .b import B

#   farm/
#   |_ __init__.py
#   |_ bird/
#   |    |_ __init__.py
#   |    |_ chicken.py
#   |    |_ turkey.py
#   |_bovine/
#       |_ __init__.py
#       |_ cow.py
#       |_ ox.py
#       |_ common.py
