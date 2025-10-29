# inetdata

import urllib2
########################################################################
def main():
    #open a connection to a URL using urllib2
    webUrl = urllib2.urlopen('http://joemarini.com')

    # get the result code & print it
    print 'result code : ' + str(webUrl.getcode())
    print

    # read the data from the URL and print it
    data = webUrl.read()
    print data


########################################################################
if __name__ == '__main__':
    main()

########################################################################
