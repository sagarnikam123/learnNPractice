# 7_Disambiguating Word Meanings

from nltk.corpus import wordnet as wn
for ss in wn.synsets('bass'):
    print(ss, ss.definition())

from nltk.wsd import lesk
sensel = lesk(word_tokenize('Sing in a lower tone, along with the bass'), 'bass')
print(sensel, sensel.definition())

sense2 = lesk(word_tokenize('This sea bass was really hard to catch'), 'bass')
print(sense2, sense2.definition())
