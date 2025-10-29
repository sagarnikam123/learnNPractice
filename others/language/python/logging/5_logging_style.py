import logging

# WARNING:root:Hello, Warning!
logging.basicConfig(format='{levelname}:{name}:{message}', style='{')
logging.warning('Hello, Warning!')
