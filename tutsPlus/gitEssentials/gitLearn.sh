#############################
# TutsPlus - Git Essentials	#
#############################


#########################
#	01-install - 7.02	#
#########################

	# download git from here (mac-windows,linux)
	# www.git-scm.com
	# checking git version
	git --version
		# git version 1.7.9.5

	# which git u r using if many versions
	which git
		# /usr/bin/git

#################################
#	02-configuration - 10.04	#
#################################

# Configuration scope
	# 1. System (Multiusers) - for every user of the system - /etc/gitconfig
	# 2. Global (single user) - for perticular user - ~./gitconfig
	# 3. Local (repository) - per repository- created in respective project folder .git/config--default behaviour


# Configuring username & email

	git config user.name "sagarnikam123"

	# error: could not lock config file .git/config: No such file or directory
	# means git trys to set username at local leleve

	git config --global user.name "sagarnikam123"
	git config --global user.email "sagarnikam123@gmail.com"

	# checking
	ls -a ~/
	cat ~/.gitconfig

	# viewing
	git config user.name
		# sagarnikam123

	git config user.email
		# sagarnikam123@gmail.com

# Coloring of output of GIT globally
	git config --global color.ui true

#############################
#	03-initializing - 2.32	#
#############################

	# making project folder to store project
		cd Desktop/
		mkdir project
		cd project
	# Initialize git project structure
	git init

	# Initialized empty Git repository in /home/hadoop/Desktop/project/.git/
	ls -a  # produces 3 folders
		# .  ..  .git
	cd .git
	ls
		# branches  config  description  HEAD  hooks  info  objects  refs

	# creats README file for project & write somethig in it
	sudo gedit README

#############################
#	04-status-add - 7.53	#
#############################

#########################
#	05-commit - 6.18	#
#########################

#########################
#	06-ignore - 6.30	#
#########################

#########################
#	07-theory - 10.03	#
#########################

#############################
#	08-internals - 13.34	#
#############################


#####################
#	09-diff - 7.29	#
#####################

#####################
#	10-log - 6.39	#
#####################

#########################
#	11-branch - 0.00	#
#########################

#############################
#	12-merge-rebase - 0.00	#
#############################

#########################
#	13-github - 0.00	#
#########################

#############################
#	14-github-tour - 0.00	#
#############################

#################################
#	15-remotes-push-pull - 0.00	#
#################################

#############################
#	16-github-pages - 0.00	#
#############################

#################################
#	17-interactive-add - 0.00	#
#################################

#########################
#	18-git-stash - 0.00	#
#########################

#########################
#	19-aliases - 0.00	#
#########################

#################################
#	20-merge-conflict - 0.00	#
#################################

#####################
#	21-guis - 0.00	#
#####################

#########################
#	22-vcprompt - 0.00	#
#########################

#############################
#	23-conclusion - 0.00	#
#############################








mkdir pyHadoop
cd pyHadoop
git init
#makde README file
git status
 # README

# adding file for tracking by git
git add README
git status
 # new file:   README

# Change some contents in README file
git status
 # modified:   README

# make new file
vi  TODO
git status
# Untracked files: TODO

# commit all changes made to README file
git add README
git status
# new file:   README


# Move files which want to add
sudo cp -R /home/trendwise/Documents/hadoopPy/* .
git add .
git status


# making commit in vi-editor
git commit
# [master (root-commit) 34c5e48] First gitcommit BigData--Pythonic MapReduce program WordCount
#  9 files changed, 78046 insertions(+)
#  create mode 100644 README
#  create mode 100644 TODO
#  create mode 100644 data/Notebook_of_Leonardo_da_vinci.txt
#  create mode 100644 data/Outline_of_science.txt
#  create mode 100644 data/Ulysses.txt
#  create mode 100644 data/small
#  create mode 100644 mapper.py
#  create mode 100644 reducer.py
#  create mode 100644 runningTest.sh

git status
# On branch master
# nothing to commit (working directory clean)
vi LICENCE
git status
vi TODO
git status

git add LICENCE


# If exists some untracked files(which may be hidden), then remove it

#make some files & folder to untrack by git
touch .DS_Store
mkdir tmp
touch tmp/temp1

# modify TODO file (add '(done)' in 2 no line-at last)
git status


# to track/commit
git add TODO
git status

#add actual commit message
git commit -m 'updated TODO'
git status

# Telling list of files to git for Ignorance
sudo gedit .gitignore # add filename on each line,as below

	.DS_store
	tmp
	*.swp~
	test/*.txt  # dont track all file  with ext .txt
	!test/master.txt # track only file having this specification
git status

# tack Every unstagged changes to the Stagged area
git add .
git status

# add commit message for last change
git commit -m "added a .gitignore file"
git status

# check ignore files are tracking or not
mkdir test
touch test/one.txt
git status

# check Non-ignoring file is tracked or not
touch test/master.txt
git status

git add .
git status

# To untrack master.txt
 git reset HEAD test/master.txt
 git status
 rm -r test/ # remvoe folder also
