# writing text files

################################################################################
f = open('wasteland.txt', mode='wt', encoding='utf-8')
help(f)
f.write('What are the roots that clutch, ')
f.write('what branches grow\n')
f.write('Out of this stony rubbish? ')
f.close()

# tail -f wasteland.txt
# ls -l wasteland.txt

################################################################################
