# Putting it all together

################################################################################
# with statements avoids resource leaks
# http request transfer raw bytes, like b'what is this', b'quantum'

from urllib.request import urlopen
with urlopen('http://sixty-north.com/c/t.txt') as story:
    story_words = []
    for line in story :
        # line_words = line.split()
        line_words = line.decode("utf-8").split() # converts bytes->string
        for word in line_words():
            story_words.append(word)

story_words

################################################################################
