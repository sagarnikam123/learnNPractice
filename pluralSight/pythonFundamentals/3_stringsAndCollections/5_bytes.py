# Bytes

################################################################################
# immutable sequences of bytes

d = b'some bytes'
d.split()

# encoding (string -> bytes)
norsk = 'Jeg  begynte a fortaere en sandwich mens jeg kjorte taxi pa vei til quiz'
data = norsk.encode('utf-8')
data

# decoding (bytes -> string)
norwegian = data.decode('utf-8')
norwegian

# check 4 equality
norwegian = norsk

################################################################################
