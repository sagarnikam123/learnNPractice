# 3_Tokenizing Text

import nltk

# download required packages/corporas/models
nltk.download()

text = 'Mary had a little lamb. Her fleece was white as snow'
from nltk.tokenize import word_tokenize, sent_tokenize
sents = sent_tokenize(text)
print(sents)

words = [word_tokenize(sent) for sent in sents]
print(words)
