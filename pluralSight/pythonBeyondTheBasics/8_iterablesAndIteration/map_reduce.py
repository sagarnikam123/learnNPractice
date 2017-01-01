# map_reduce.py

def count_words(doc):
    normalised_doc = ''.join(c.lower() if c.isalpha() else ' ' for c in doc)
    frequencies = {}
    for word in normalised_doc.split():
        frequencies[word] = frequencies.get(word, 0) + 1
    return frequencies

documents = [
    'It was the best of times, it was the worst of times.',
    'I went to the woods because I wished to live deliberately, to front only the essential facts of life...',
    'Friends, Romans, countryment, lend me your ears; I come to bury Caesar, not to praise him.',
    'I do not like green eggs and ham. I do not like them, Sam-I-Am.'
]

counts = map(count_words, documents)

def combine_counts(d1, d2):
    d = d1.copy()
    for word, count in d2.items():
        d[word] = d.get(word, 0) + count
    return d
