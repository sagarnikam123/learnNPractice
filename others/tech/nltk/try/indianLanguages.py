# download packages
# in Corpora-> indian
#import nltk
#nltk.download()

from nltk.corpus import indian

print('Files of Indian languages:-')
# check files for each languare in NLTK
print(indian.fileids())
print()

print('Language details :-')
# find no. of characters in each language
for f in indian.fileids():
    print('Language :-',f)
    print('     No of Characters', len(indian.raw(f)),  )
    print('     No of words :-', len(indian.words(f)))
    print('     No of Sentences :-', len(indian.sents(f)))
print()

print('Checking raw sentences of languages:-')
# print(indian.raw(indian.raw('bangla.pos'))
# print(indian.raw(indian.raw('hindi.pos'))
# print(indian.raw(indian.raw('marathi.pos'))
# print(indian.raw(indian.raw('telugu.pos'))

print('Printing & writing the sentences to a file,  from Marathi language')
sentencesMarathi = open('marathiSentences.txt', 'w')
# This will print sentence as a list of words
for sentence in indian.sents('marathi.pos'):
    #print(sentence)
    sentencesMarathi.write(' '.join(sentence))


print('Printing & writing words to a file, from Bangla language')
wordsBangla = open('hindiWords.txt', 'w')
# This will print sentence as a list of words
for word in indian.words('bangla.pos'):
    print('===>', word, end=' ')
    wordsBangla.write(' '.join(word))


# checking POS tagged sentences for particular language
for taggedSents in indian.tagged_sents('hindi.pos'):
    print(taggedSents)
    #print(end="")
