# installing third party modules

################################################################################
# installing easy_install

source venv/bin/activate
# wget http://python-distribute.org/distribute_setup.py
wget https://bootstrap.pypa.io/ez_setup.py
python ez_setup.py

# easy_install <package name>
easy_install pip

pip install nose

nosetests palindrome3.py

################################################################################
