# 3_Downloading an Article

from bs4 import BeautifulSoup
import urllib.request

articleURL = 'https://www.washingtonpost.com/news/the-switch/wp/2016/10/18/the-pentagons-massive-new-telescope-is-designed-to-track-space-junk-and-watch-out-for-killer-asteroids/?utm_term=.3c4f3bdb6d37'
page = urllib.request.urlopen(articleURL).read().decode('utf-8', 'ignore')
soup = BeautifulSoup(page, 'lxml')
soup

soup.find('article')
soup.find('article').text

text = ' '.join(map(lambda p: p.text, soup.find_all('article')))
text
text.encode('ascii', errors = 'replace').replace('?', ' ')

# putting above into function
def getTextWaPo(url):
    page = urllib.request.urlopen(articleURL).read().decode('utf-8', 'ignore')
    soup = BeautifulSoup(page, 'lxml')
    text = ' '.join(map(lambda p: p.text, soup.find_all('article')))
    return text.encode('ascii', errors = 'replace').replace(b'?', b' ')

text = getTextWaPo(articleURL)
# converting to string text
text = text.decode('utf-8')
