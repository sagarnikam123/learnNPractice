# 6. Modules

import fibo
fibo.fib(1000)
fibo.fib2(100)
fibo.__name__
fib = fibo.fib
fib(500)

# 6.1. More on Modules
from fibo import fib, fib2
fib(500)
dir()

from fib import *
dir()
fib(500)

del fib,fib2
import fibo as fib
fib.fib(500)

import fibo
dir()
import importlib
# changed few things in fibo.py
importlib.reload(fibo)
dir()

# 6.1.1. Executing modules as scripts
# put into fibo.py
if __name__ == "__main__":
	import sys
	fib(int(sys.argv[1]))

python3 fibo.py 50

# 6.1.2. The Module Search Path

# 6.1.3. “Compiled” Python files

# 6.2. Standard Modules
import sys
sys.ps1
sys.ps2
sys.ps1 = 'C:>'
print('Yuck!')

sys.path.append('/ufs/guido/lib/python')

# 6.3. The dir() Function
import fibo, sys
dir(fibo)
dir(sys)

a = [1, 2, 3, 4, 5]
import fibo
fibo = fibo.fib
dir()

import builtins
dir(builtins)

# 6.4. Packages
import sys
sys.path.append('/home/tetra/Documents/git/learnNPractice/others/language/python/pythonDocsOfficial/6_modules')
import sound.effects.echo
output=0
sound.effects.echo.echofilter(input, output, delay=0.7, atten=4)

from sound.effects import echo
output=1
echo.echofilter(input, output, delay=0.7, atten=4)

from sound.effects.echo import echofilter
echofilter(input, output, delay=0.7, atten=4)

# 6.4.1. Importing * From a Package
from sound.effects import *

import sound.effects.echo
import sound.effects.surround
from sound.effects import *

# 6.4.2. Intra-package References

# 6.4.3. Packages in Multiple Directories
