# 5_Recovering from Uncommitted Mistakes

# finding out what changed
sudo git diff HEAD
sudo git reset HEAD --hard

# remove many lines
sudo nano LocalSettings.erb
sudo git diff
sudo git reset HEAD --hard
#check
sudo cat LocalSettings.erb
