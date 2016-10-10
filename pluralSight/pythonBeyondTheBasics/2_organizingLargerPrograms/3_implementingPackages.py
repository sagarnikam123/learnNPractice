# 02_03-Implementing Packages
# mkdir reader
# touch reader/__init__.py

import reader
type(reader)
reader.__file__

# adding print statement to __init__.py file & reimporting
import reader

# after adding Reader class
import reader.reader
reader.reader.__file__
r = reader.reader.Reader('/home/quanta/git/learnNPractice/pluralSight/pythonBeyondTheBasics/2_organizingLargerPrograms/reader/reader.py')
r.read()
r.close()

# add from reader.reader import Reader in __init__.py
import reader
r = reader.Reader('/home/quanta/git/learnNPractice/pluralSight/pythonBeyondTheBasics/2_organizingLargerPrograms/reader/reader.py')
r.read()
r.close()
