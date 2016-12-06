# 5_Extracting a Summary

from nltk.probability import FreqDist
freq = FreqDist(word_sent)
freq

from heapq import nlargest
nlargest(10, freq, key=freq.get)

from collections import defaultdict
ranking  = defaultdict(int)

for i, sent in enumerate(sents):
    for w in word_tokenize(sent.lower()):
        if w in freq:
            ranking[i] += freq[w]

ranking

sents_idx = nlargest(4, ranking, key=ranking.get)
sents_idx

[sents[j] for j in sorted(sents_idx)]

def summarize(text, n):
    sents = sent_tokenize(text)
    assert n <= len(sents)
    word_sent = word_tokenize(text.lower())
    _stopwords = set(stopwords.words('english') + list(punctuation))
    word_sent = [word for word in word_sent if word not in _stopwords]
    freq = FreqDist(word_sent)
    ranking  = defaultdict(int)
    for i, sent in enumerate(sents):
        for w in word_tokenize(sent.lower()):
            if w in freq:
                ranking[i] += freq[w]
    sents_idx = nlargest(n, ranking, key=ranking.get)
    return [sents[j] for j in sorted(sents_idx)]

summarize(text, 5)
