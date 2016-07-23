# appending to text files

################################################################################
h = open('wasteland.txt', mode='at', encoding='utf-8')
h.writelines(
    ['Son of man, \n',
     'You cannot say, or guess, ',
     'for you know only, \n',
     'A heap of broken images, ',
     'where the sun beats \n'] )
 h.close()

# tail -f wasteland.txt

################################################################################
