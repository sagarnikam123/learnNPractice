# 02_08-Namespace Packages

#   path1
#   |__ split_farm
#       |_ bovine
#           |_ __init__.py
#           |_ common.py
#           |_ cow.py
#           |_ ox.py
#           |_ string.py
#
#   path2
#   |__ split_farm
#       |_ bird
#           |_ __init__.py
#           |_ chicken.py
#           |_ turkey.py

import sys
sys.path.extend( [ 'path1', 'path2' ] )

import split_farm
split_farm.__path__

import split_farm.bird
import split_farm.bovine
split_farm.bird.__path__
split_farm.bovine.__path__
