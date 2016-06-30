# reading text files

################################################################################
g = open('wasteland.txt', mode='rt', encoding='utf-8')
g.read(32)
g.read()
g.read()
g.seek(0)
g.readline()
g.readline()
g.readline()
g.seek(0)
g.readlines()
g.close()

################################################################################
