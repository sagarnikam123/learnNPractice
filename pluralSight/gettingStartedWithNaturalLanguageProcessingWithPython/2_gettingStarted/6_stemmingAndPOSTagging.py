# 6_Stemming and POS Tagging

text2 = 'Mary closed on closing night when she was in the mood to close.'
from nltk.stem.lancaster import LancasterStemmer

st = LancasterStemmer()
stemmedWords = [ st.stem(word) for word in word_tokenize(text2)]
print(stemmedWords)

nltk.pos_tag(word_tokenize(text2))
