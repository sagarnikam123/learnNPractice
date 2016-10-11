# 02_05-Example A Full Program

python3 -m reader.compressed.bzipped test.bz2 data compressed with bz2
python3 -m reader.compressed.gzipped test.gz data compressed with gzip

import reader

r = reader.Reader('test.bz2')
r.read()
r.close()

r = reader.Reader('test.gz')
r.read()
r.close()

r = reader.Reader('reader/__init__.py')
r.read()
r.close()
