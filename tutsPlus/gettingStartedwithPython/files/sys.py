#! /usr/bin/env python

import re

print re.search('a','apple')
print re.search('a','apple').group()

print re.search('c(.*)k','cocktail').group()
print re.search('ram(.*)yan','ramnarayan').group(1)

print re.findall('\w+@\w+\.com','email1 is jesseshal@gmail.com and email2 is bob@example.com')
