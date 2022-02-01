# grep - All you need to know

################################################################################
git clone https://github.com/kubernetes/kubernetes
cd kubernetes

grep docker go.mod # with term found highlighted
grep -n 'docker' go.mod # with line nnumbers
grep v0 go.mod
grep v0 go.mod | wc -l # no of lines

grep -c v0 go.mod # count
grep -c v[1-9] go.mod # count with regex

grep 'v[1-9]' go.mod | head # regex
grep 'v[1-9]*' go.mod | head # regex
grep -c 'v*' go.mod
################################################################################
# negation
grep -v 'docker' go.mod # with docker term
grep -v -c 'docker' go.mod # no docker term
grep 'v[0-9]\.[0-9]\.[0-9]' go.mod # versions line
grep -v 'v[0-9]\.[0-9]\.[0-9]' go.mod # higher versions line
grep 'v[0-9]\.[0-9]\.[0-9]' go.mod | grep -v 'docker' -c # count of versions with no docker
grep 'v[0-9]\.[0-9]\.[0-9]' go.mod | wc -l
grep 'v[0-9]\.[0-9]\.[0-9]' go.mod -c # count-same as above
cat go.mod | grep 'v[0-9]\.[0-9]\.[0-9]' | grep -v docker -c

gls -lah | grep go # all files names containing 'go' word
ls -lah | grep 'go\.' # starting with go. only

grep docker .  # grep: .: Is a directory
grep -r docker # searches recursively

# Context
grep -C 3 docker go.mod # 3 lines before & after each context
grep -A 3 docker go.mod # 3 lines after result
grep -B 3 'docker' go.mod # 3 lines before result

time grep -cr docker . # with time, recursively search for docker

# silversearcher-ag - recursively search for PATTERN in PATH. Like grep or ack, but faster
sudo apt install silversearcher-ag
time ag -cr docker . # faster 

# ripgrep (rg) - recursively searches the current directory for a regex pattern
sudo apt  install ripgrep
time rg -cr docker .
################################################################################
