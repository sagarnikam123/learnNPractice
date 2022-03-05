# 4_What is stdout, stderr, _dev_null and redirection

# version2.sh
################################################################################
# 1> - redirect from stream 1
# &2 - take into stream 2
# /dev/null - take input from stdin & discards it
################################################################################
curl -v -X POST localhost:3000
curl -v -X POST localhost:3000 2>/dev/null
################################################################################
