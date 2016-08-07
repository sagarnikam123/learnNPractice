# setting global configurations
git config --global user.name "sagarnikam123"
git config --global user.email "sagarnikam123@gmail.com"

git config --list
cd $HOME
cat .gitconfig

# setting aliases
git config --global alias.co checkout

# checking aliases
alias | grep git

# dealing which whitespace
git config --global apply.whitespace nowarn
