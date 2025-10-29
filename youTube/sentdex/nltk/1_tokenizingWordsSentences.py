# http://www.nltk.org/

# install
# sudo pip3 install nltk

import nltk
print('Installed NLTK')

# downloading Collections, Corpora, Modules, Books, third-party data packages
# nltk.download()

from nltk.tokenize import sent_tokenize, word_tokenize

# tokenizing - word tokenizers ... sentence tokenizers
# lexicon and corporas
# corpora - body of text.
#           ex. medical journals, presidential speeches, English languare
# lexicon - words and their means
# investor-speak ... regular english-speak
# investor speak 'bull' = someone who is positive about the market
# english-speak 'bull' = scary animal you don't want running @ you

example_text = 'Hello Mr. Smith, how are you donig today? The weather is great and Python is awesome. The sky is pinkish-blue. You should not eat cardboard.'
print('Senten tokenized :- ', sent_tokenize(example_text))
print('Words tokenized:- ', word_tokenize(example_text))
print('================================')

for i in word_tokenize(example_text):
    print(i)
