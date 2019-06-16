# 4.2. for Statements

# iterates over the items of any sequence (a list or a string)
# Measure some strings
words = ['cat', 'window', 'defenestrate']
for w in words:
    print(w, len(w))

# Iterating over a sequence does not implicitly make a copy.
for w in words[:]:  # Loop over a slice copy of the entire list
    if len(w) > 6:
        words.insert(0, w)

words
