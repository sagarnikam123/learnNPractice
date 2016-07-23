# series2.py

################################################################################
''' Read and print an interger series. '''

import sys

def read_series(filename):
    try:
        f = open(filename, mode='rt', encoding='utf-8')
        return [ int(line.strip()) for line in f ]
    finally:
        f.close()
    
def main(filename):
    series = read_series(filename)
    print(series)

if __name__ == '__main__' :
    main(sys.argv[1])

################################################################################
