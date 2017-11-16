#++++++++++++++++++++++++++++++++++++++++++++
#											#
#	Git tutorials & Training by Atlassian	#
#		[https://www.atlassian.com/git]		#
#++++++++++++++++++++++++++++++++++++++++++++



# creating a central repository for storage into different server

ssh root@192.168.100.175
git init --bar nullPointer.git
git init --bar centralRepo
cd nullPointer.git
cd centralRepo

# clone central repository using HTTPS/SSH
git clone ssh://root@192.168.100.175/root/gitWare/centralRepo

# configs
git config --local user.name sagarnikam123
git config --local user.email sagarnikam123@gmail.com

# defining default text editor for 'git commit' for all users on current machine
git config --system core.editor gedit
git config --system core.editor vi

# open global configuration file for manual editing
git config --global --edit

# getting all configs for global
git config --global --list

# adding alias 
git config --global alias.st status

# removing alias
git config --global --unset alias.st

# customizing git log (committed history/project history)
git log -n 5	# shows only no. of logs(5)
git log --oneline	# singleline comments
git log --stat
git log -p	# displays detailed path changed.
git log --graph --decorate --oneline

# checkout/ discarding
git log --oneline	# to see commit id
git checkout 14ce64b	# brings u into 'detached HEAD' state
						# u will be on 'no branch'
						# make changes here, u can develop new branch here
git checkout master

# creating new branch with changed code
git branch aajPhir ef3884032c68dc2c715a42b51495f4dfd04e04d7
git branch
git checkout aajPhir	# go to new branch
 
git checkout cc35172 tutsPlus/git/gitLearn.sh	# to go to perticular stage
git checkout HEAD tutsPlus/git/gitLearn.sh	# switch to master branch, where u left



