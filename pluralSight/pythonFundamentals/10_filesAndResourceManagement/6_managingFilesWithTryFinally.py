# managing files with try finally

################################################################################
python3 recaman1.py recaman1.dat 1000
python3 series1.py recaman1.dat

# add any string to reacamen1.dat & save as recamen2.dat
# ValueError: invalid literal for int() with base 10: 'oops!'
python3 series1.py recaman2.dat
# adding try..finally
python3 series2.py recaman2.dat
################################################################################
