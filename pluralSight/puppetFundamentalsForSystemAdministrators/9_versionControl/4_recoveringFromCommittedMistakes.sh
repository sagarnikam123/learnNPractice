# 4_Recovering from Committed Mistakes

# delete anything like $wgDBtype, $wbDBuser/$wg
cd /etc/puppet/environments/production/modules/mediawiki/templates
sudo nano LocalSettings.erb
sudo git add .
sudo git commit -m "Removed comments from mediawiki LocalSettings.erb template"
# take commit identifier
sudo git log
sudo git revert --no-edit d98d290cb8c18b80ecba8fdf5ab5d0bdf7b61e5b
# check
sudo git log
sudo cat LocalSettings.erb
