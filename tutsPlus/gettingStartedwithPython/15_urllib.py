# 15_urllib

import urllib
import re

html = urllib.urlopen('https://jesse.sh/')
#print html.read()

#urllib.urlretrieve("https://jesse.sh/img/caniuse-fetch.png", "files/caniuseFectch.png")

print re.findall( '[\W]+@[\W.]+', str(html))
