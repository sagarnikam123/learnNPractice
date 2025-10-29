# files

########################################################################
def main():
    # Open a file for writing and create it if it doesn' exist
    # f = open("textfile.txt", "w+")
    #
    # # write some lines of data to the files
    # for i in range(10):
    #     f.write("This is line %d\r\n" % (i+1))
    #
    # # close the file when done
    # f.close()
    #
    # # Open file to aapending text to the end
    # f = open("textfile.txt", "a+")
    #
    # # write some lines of data to the files
    # for i in range(10):
    #     f.write("This is again the line %d\r\n" % (i+1))
    #
    # # again close the file
    # f.close()

    # Open the file back up & read the contents
    f = open('textfile.txt', 'r')

    if f.mode == 'r' :  # check to make sure that the file was open
        # use the read() function to read the entire file
        # contents = f.read()
        # print contents
        fl = f.readlines()

        for x in fl:
            print x
########################################################################
if __name__ == '__main__':
    main()

########################################################################
