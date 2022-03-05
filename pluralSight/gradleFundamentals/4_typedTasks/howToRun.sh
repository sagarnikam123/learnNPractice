
# 2_Using the Copy Task
mkdir src dest
touch src/text.txt src/text.doc src/abc.jpeg
touch src/pqr.png src/lmn.png src/data.json
gradle tasks --all
gradle copyImages
rm -f dest/*
gradle copyImages2
###############################################################################
touch src/web.xml
gradle tasks --all
gradle copyConfig
###############################################################################
