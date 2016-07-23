# dictionary comprehension

################################################################################
from pprint import pprint as pp
country_to_capital = { 'United Kingdom' : 'London',
                       'Brazil' : 'Brazilia',
                       'Morocco' : 'Rabat',
                       'Sweden' : 'Stockholm' }
capital_to_country = { capital : country for country , capital in country_to_capital.items() }
capital_to_country
pp(capital_to_country)

# duplicates : later keys overwrite earlier keys
# not understood
words = ['hi', 'hello', 'foxtrot', 'hotel']
words
{x[0]:x for x in words}

# not working
import os
import glob
file_sizes = { os.path.realpath(p) : os.stat(p).st_size for p in glob.glob('*.py') }
file_sizes
pprint(file_sizes)

################################################################################
