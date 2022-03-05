# htmlparsing

# import the HTMLParser module
from HTMLParser import HTMLParser

metacount =0;
########################################################################
# create a subclass and override the handler methods
class MyHTMLParser(HTMLParser):

    # function to handle an opening tag in the doc
    # this will be called when the closing ">" of the tag is reached
    def handle_starttag(self, tag, attrs):
        global metacount
        print "Encountred a start tag: ", tag
        if tag =="meta":
            metacount +=1

        pos = self.getpos() # returns a tuple indication line and character
        print
        print "At line : ", pos[0], " position", pos[1]
        if attrs.__len__ > 0:
            print "\t Attributes: "
            for a in attrs :
                print "\t", a[0], "=", a[1]

    # function to handle the ending tag
    def handle_endtag(self, tag):
        print
        print "Encountered an end tag: ", tag
        pos = self.getpos()
        print "At line : ", pos[0], " position ", pos[1]


    # function to handle character and text data (tag contents)
    def handle_data(self, data):
        print
        print "Encountered some data: ", data
        pos = self.getpos()
        print "At line : ", pos[0], " position ", pos[1]

    #function to handle the processing of HTML comments
    def handle_comments(self, data):
        print
        print "Encountered comment : ", data
        pos = self.getpos()
        print "At line : ", pos[0], " position ", pos[1]

########################################################################
def main():
    #instantiate tha parser and feed it some html
    parser = MyHTMLParser()

    # open the sample HTML file and read it
    f = open("samplehtml.html", "r")
    if f.mode == "r" :
        contents = f.read() # read the entire file
        parser.feed(contents)
    print
    print "%d meta tags encountered " % metacount


########################################################################
if __name__ == "__main__" :
    main()

########################################################################
