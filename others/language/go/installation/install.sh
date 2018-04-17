#setup installation

#download - https://golang.org/dl/
tar -C /usr/local -xzf /home/quanta/Downloads/go1.9.2.linux-amd64.tar.gz

# Adding PATH environment variable
/etc/profile # (for system-wide)
$HOME/.profile #(for all user)
$HOME/.bashrc (# for local user)

# Note: Go binary distributions assume they will be installed in /usr/local/go
#       GOROOT must be set only when installing to a custom location.

# Go lang path/evn variables
export GOROOT=/usr/local/go/
export PATH=$PATH:$GOROOT/bin

#GoProjects Path-Word directory
export GOPATH=$HOME/goProjects
export PATH=$PATH:$GOPATH/bin
################################################################################
#check installation
go version

#using "hello World !"

# building & running
cd $HOME/go/src/hello
$ go build
################################################################################
#installing goTour
cd $GOPATH/src
go get golang.org/x/tour/gotour
gotour
################################################################################
# toools installation
cd $GOPATH/src
go get -u golang.org/x/tools/cmd/goimports
go get -u golang.org/x/tools/cmd/gorename
go get -u github.com/sqs/goreturns
go get -u github.com/nsf/gocode
go get -u github.com/alecthomas/gometalinter
go get -u github.com/zmb3/gogetdoc
go get -u github.com/rogpeppe/godef
go get -u golang.org/x/tools/cmd/guru

################################################################################
#
# downloading a github plugin & automatically building its binary
#
################################################################################
cd $GOPATH/src
go get -u github.com/terraform-providers/terraform-provider-google

cd $GOPATH/bin  # check terraform-provider-google binary

################################################################################
#
# downloading a github plugin & building it manually
#
################################################################################

cd $GOPATH/src/github.com/terraform-providers
git clone https://github.com/terraform-providers/terraform-provider-aws.git
cd terraform-provider-aws.git

make build

cd $GOPATH/bin  # check terraform-provider-aws binary
################################################################################
