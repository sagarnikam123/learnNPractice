# Learn about scripts, functions, chmod and set -e

################################################################################
# make tests.sh which contains unit, integration & e2e tests
touch tests.sh
################################################################################
#!/bin/bash

function unit_tests(){
    echo "running unit tests"
    return 0
}

function integration_tests() {
    echo "running integration tests"
    return 0
}

function e2e_tests(){
    echo "running e2e tests"
    return 0
}

# calling functions
unit_tests
integration_tests
e2e_tests
################################################################################
# chmod
ls -l
chmod +x tests.sh
./tests.sh

# changed return 0 of unit_tests & try to run
# it still run even return 0
./tests.sh && echo "git push"
################################################################################
# chained function calling
unit_tests && integration_tests && e2e_tests
echo $?

################################################################################
# use set -e after shebang line (-e -> exit script on error)
set -e

# use set +e before function call( +e -> ignore error & don't exit)
set +e
################################################################################
