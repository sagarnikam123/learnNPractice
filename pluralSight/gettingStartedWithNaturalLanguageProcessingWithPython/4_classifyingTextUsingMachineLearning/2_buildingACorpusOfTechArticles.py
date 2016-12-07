# 2_Building a Corpus of Tech Articles

import urllib.request
from bs4 import BeautifulSoup

# get urls of all posts from blogsite
def getAllDoxyDonkeyPosts(url, links):
    request = urllib.request.Request(url)
    response = urllib.request.urlopen(request)
    soup = BeautifulSoup(response, 'lxml')
    for a in soup.findAll('a'):
        try:
            url = a['href']
            title = a['title']
            if title == 'Older Posts':
                print(title, url)
                links.append(url)
                getAllDoxyDonkeyPosts(url, links)
        except:
            title = ''
    return

blogUrl = 'http://doxydonkey.blogspot.in'
links = []
getAllDoxyDonkeyPosts(blogUrl, links)

# getting text for each url
def getDoxyDonkeyText(testUrl):
    request = urllib.request.Request(testUrl)
    response = urllib.request.urlopen(request)
    soup = BeautifulSoup(response, 'lxml')
    mydivs = soup.findAll('div', {'class' : 'post-body'})
    posts = []
    for div in mydivs:
        posts += map(lambda p: (p.text.encode('ascii', errors='replace').replace(b'?', b' ')).decode('utf-8') , div.findAll('li'))
    return posts

doxyDonkeyPosts = []
for link in links:
    doxyDonkeyPosts += getDoxyDonkeyText(link)
