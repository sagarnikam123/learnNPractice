# venv

################################################################################
# create virtual environment
python3 -m venv iee_multipipeline

# activate
source iee_multipipeline/bin/activate
################################################################################
# install latest version of a package
python3 -m pip install novas

# uninstall package
python3 -m pip uninstall requests

# upgrade package
python3 -m pip install --upgrade requests
################################################################################
# list of installed packages
pip3 freeze > requirements.txt

# install
python3 -m pip install -r requirements.txt
################################################################################
# install a specific version of a package
python3 -m pip install requests==2.6.0



# information about a particular package
pip3 show requests

# all of installed packages
pip3 list
################################################################################
