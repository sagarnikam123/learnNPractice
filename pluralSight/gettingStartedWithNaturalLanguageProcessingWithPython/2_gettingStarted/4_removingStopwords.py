# 4_Removing Stopwords

from nltk.corpus import stopwords
from string import punctuation
customStopWords = set( stopwords.words('english') + list(punctuation ) )
wordsWOStopWords = [word for word in word_tokenize(text) if word not in customStopWords]
wordsWOStopWords
