# 4_Preprocessing Article Text

from nltk.tokenize import word_tokenize, sent_tokenize
from nltk.corpus import stopwords
from string import punctuation

sents = sent_tokenize(text)
sents

word_sent = word_tokenize(text.lower())
word_sent

_stopwords = set(stopwords.words('english') + list(punctuation))
_stopwords

word_sent = [word for word in word_sent if word not in _stopwords]
