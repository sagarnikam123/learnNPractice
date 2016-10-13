# 02_09-Executable Directories

#   reader
#   |_ __main__.py
#   |_ reader
#       |_ __init__.py
#       |_ compressed
#       |   |_ __init__.py
#       |   |_ bzipped.py
#       |   |_ gzipped.py
#       |_reader.py

python3 readerExe

#
python3 readerExe test.gz
python3 readerExe test.bz2
python3 readerExe readerExe/__main__.py

# making executable directory into zipped file
cd readerExe
zip -r ../readerExe.zip *

cd ..
python3 readerExe.zip test.gz
python3 readerExe.zip test.bz2
