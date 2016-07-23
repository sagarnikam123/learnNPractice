""" Retrieve and print wrods from a URL.

Usage :
    python3 words.py <URL>
"""

import sys
from urllib.request import urlopen

def fetch_words(url):
    """
        Fetch a list of words from a URL.

        Args :
            url : The URL of a UTF-8 text document.

        Returns :
            A list of strings containing the words from
            the document.
    """
    # with urlopen('http://sixty-north.com/c/t.txt') as story:
    with urlopen(url) as story:
        story_words = []
        for line in story :
            # line_words = line.split()
            line_words = line.decode("utf-8").split() # converts bytes->string
            for word in line_words():
                story_words.append(word)

    return story_words

# def print_words(story_words):
#     for word in story_words:
#         print(word)

def print_items(items):
    """ Print items one per line.

    Args :
        An iterable series of printable items.

    """
    for item in items:
        print(item)

# print(__name__)

def main(url):
    """ Print each word from a text document from a URL.

    Args :
        url : The URL of a UTF-8 text document.
    """
    words = fetch_words(url)
    # print_words(words)
    print_items(words)

if __name__ == "__main__" :
    main(sys.argv[1])   # The 0th arg is the module filename
