# 8_Signing Agent Certificates

# on puppet master, to view singing certificate request by diff nodes
sudo puppet cert list
sudo puppet cert sign wiki
sudo puppet cert sign wikitest

# chekcing on puppet agent's node (wiki & wikitest servers)
# this will contact puppet master
sudo puppet agent --verbose --no-daemonize --onetime

# on wikitest server
sudo puppet agent --enable
