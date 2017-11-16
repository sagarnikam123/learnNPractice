

pyEnsembleRest- A python wrapper for EnsEMBL REST API

# installing  pyEnsembleRest
# download 4m internet or clone via git- https://github.com/pyOpenSci/pyEnsemblRest
git clone https://github.com/pyOpenSci/pyEnsemblRest.git 
cd pyEnsemblRest/
sudo python setup.py install


from ensemblrest import EnsemblRest
# making EnsembleRest object
ensemblrest = EnsemblRest()

# To use a custom EnsEMBL REST server
ensemblrest = EnsemblRest(server='localhost') # setup rest object to point to localhost server
# proxy server settings in the form of a dict
ensemblrest = EnsemblRest(proxies={'http':'proxy.addres.com:3128', 'https':'proxy.address.com:3128'}) # setup rest object to point to localhost server

# You should also sleep for a second between every 3 requests (with bursts of 6 requests allowed periodically) using the following syntax:
from time import sleep
sleep(1) # sleep for a second so we don't get rate-limited


# Accessing the Comparative Genomics endpoints
print ensemblrest.getGeneTreeById(id='ENSGT00390000003602')
print ensemblrest.getGeneTreeByMemberId(id='ENSG00000157764')
print ensemblrest.getGeneTreeByMemberSymbol(species='human', symbol='BRCA2')
print ensemblrest.getHomologyById(id='ENSG00000157764')
print ensemblrest.getHomologyBySymbol(species='human', symbol='BRCA2')

# Accessing the Cross References endpoints 
print ensemblrest.getXrefsById(id='ENSG00000157764')
print ensemblrest.getXrefsByName(species='human', name='BRCA2')
print ensemblrest.getXrefsBySymbol(species='human', symbol='BRCA2')
