# 4_Identifying Themes Using K-Means Clustering

from sklearn.feature_extraction.text import TfidfVectorizer

vectorizer = TfidfVectorizer(max_df = 0.5, min_df = 2, stop_words = 'english')
x = vectorizer.fit_transform(doxyDonkeyPosts)
x
print(x)

from sklearn.cluster import KMeans
km = KMeans(n_clusters = 3, init = 'k-means++', max_iter = 100, n_init = 1, verbose = True)
km.fit(x)

import numpy as np
np.unique(km.labels_, return_counts = True)

text = {}
for i, cluster in enumerate(km.labels_):
    oneDocument = doxyDonkeyPosts[i]
    if cluster not in text.keys():
        text[cluster] = oneDocument
    else:
        text[cluster] += oneDocument

from nltk.tokenize import sent_tokenize, word_tokenize
from nltk.corpus import stopwords
from nltk.probability import FreqDist
from collections import defaultdict
from string import punctuation
from heapq import nlargest
import nltk

_stopwords = set(stopwords.words('english') + list(punctuation)+['million','billion','year','millions','billions','y/y',"'s","''",'``'])

keywords = {}
counts = {}
for cluster in range(3):
    word_sent = word_tokenize(text[cluster].lower())
    word_sent = [word for word in word_sent if word not in _stopwords]
    freq = FreqDist(word_sent)
    keywords[cluster] = nlargest(100, freq, key=freq.get)
    counts[cluster] = freq

unique_keys = {}
for cluster in range(3):
    other_clusters = list(set(range(3)) - set([cluster]))
    keys_other_clusters = set(keywords[other_clusters[0]]).union(set(keywords[other_clusters[1]]))
    unique = set(keywords[cluster]) - keys_other_clusters
    unique_keys[cluster] = nlargest(10, unique, key=counts[cluster].get)

unique_keys
