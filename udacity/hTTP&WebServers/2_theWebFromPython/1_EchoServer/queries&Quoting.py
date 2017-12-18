# Queries and quoting

from urllib.parse import urlparse, parse_qs

address = 'https://www.google.com/search?q=gray+squirrel&tbm=isch'
parts = urlparse(address)
print(parts)
print(parts.query)
query = parse_qs(parts.query)
query
