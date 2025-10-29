# jsondata

import urllib2
import json

########################################################################
def printResults(data):
    # Use the json module to load the string data into a dictionary
    theJSON = json.loads(data)

    # now we can access the contents of the JSON like any other Python object
    print
    if 'title' in theJSON['metadata']:
        print theJSON['metadata']['title']

    # output the number of events, plus the magnitude and each event name
    print
    count = theJSON['metadata']['count']
    print str(count) +' events recorded'

    # for each event, print the place where it occurred
    print
    for i in theJSON['features']:
        print i['properties']['place']

    # print the events that only have a magnitude greater than 4
    print
    print 'Events that only have a magnitude greater than 4'
    for i in theJSON['features']:
        if i['properties']['mag'] >= 4.0:
            print '%2.1f' %i['properties']['mag'], i['properties']['mag']

    # print only the events where at least 1 person reported feeling something
    print
    print 'Events where at least 1 person reported feeling something'
    print 'Events that were felft: '
    for i in theJSON['features']:
        feltReports = i['properties']['felt']
        if (feltReports != None) & (feltReports > 0) :
            print '%2.1f' %i['properties']['mag'], i['properties']['place'], ' reported ' + str(feltReports) + ' times'

########################################################################
def main():
    # define a variable to hold the source URL
    # In this case, we'll use the free data feed from USGS
    # This feed lists all earthequakes for the last day larger than Mag 2.5
    urlData = 'http://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/2.5_day.geojson'

    # Open the URL and read the data
    webUrl = urllib2.urlopen(urlData)
    print webUrl.getcode()

    if (webUrl.getcode() == 200) :
        data = webUrl.read()
        # print out our customized results
        printResults(data)
    else :
        print 'Received an error from server, cannot retrieve results ' + str( webUrl.getcode())

########################################################################
if __name__ == '__main__' :
    main()

########################################################################
