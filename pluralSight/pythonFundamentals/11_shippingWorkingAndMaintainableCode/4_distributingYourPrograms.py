# distributing your programs

################################################################################
mkdir palindrome
cp palindrome3.py palindrome
cd palindrome/
touch setup.py

# installing module using pyvenv
pyvenv venv
source venv/bin/activate
python setup.py install
cd ..
python3
import palindrome
palindrome.__file__
exit()

# distributing in zip format
cd palindrome
python setup.py sdist --format zip
ls dist
cd dist
unzip palindrome-1.0.zip

# available formats
python setup.py sdist --help-formats
python setup.py --help

################################################################################
