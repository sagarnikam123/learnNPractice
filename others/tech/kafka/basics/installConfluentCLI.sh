# install confluent CLI

###############################################################################
# download & install
curl -sL --http1.1 https://cnfl.io/cli | sh -s -- latest

# export CONFLUENT in .zshrc/.bashrc
export CONFLUENT=$HOME/bin
export PATH=$PATH:$CONFLUENT

# check
confluent --help
###############################################################################
