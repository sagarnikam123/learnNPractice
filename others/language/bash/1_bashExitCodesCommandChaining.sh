# Bash exit codes & command chaining

################################################################################
# Hello World
echo "Hello World"

# which shell using now?
echo $0
################################################################################
# $? - exit code of last command run
# 0 - success
# any non zero - not success
echo $?

# failed codes
cat wrong-file.txt
echo $?
################################################################################
# semicolon(;) - to run command whether failed/success
echo "foo"; echo "bar"
cat wrong-file.txt; echo "bar"
################################################################################
# && - not run after failure
echo "foo" && echo "bar"
cat wrong-file.txt && echo "bar"
./test.sh && git push # prevents from pusing failed code
################################################################################
# || - runs success then stops else run till success
echo "foo" || echo "bar"
cat wrong-file.txt || echo "bar"
cat wrong-file.txt || echo $? || echo "bar"
cat wrong-file.txt || echo $? && echo "bar"
./test.sh || ./cleanup.sh # if test success then only run cleanup of setup
################################################################################