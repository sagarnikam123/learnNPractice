# 02_04-Subpackages
# mkdir reader/compressed
# touch reader/compressed/__init__.py

# create bzipped & gzipped files
import reader
import reader.compressed
import reader.compressed.gzipped
import reader.compressed.bzipped
