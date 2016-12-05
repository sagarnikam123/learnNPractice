# 5_Identifying Bigrams

from nltk.collocations import *
bigram_measures = nltk.collocations.BigramAssocMeasures()
finder = BigramCollocationFinder.from_words(wordsWOStopWords)
sorted(finder.ngram_fd.items())
