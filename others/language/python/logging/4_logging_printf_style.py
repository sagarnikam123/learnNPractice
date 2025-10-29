import logging

# WARNING:root:Hello, Warning!
logging.basicConfig(format='%(levelname)s:%(name)s:%(message)s')
logging.warning('Hello, Warning!')
