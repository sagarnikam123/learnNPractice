# 5_The Client Filebucket

# stoerd in
# /var/lib/puppet/clientbucket

# checking hash in pupept logs
sudo tail /var/tail/messages

# restoring file
sudo puppet filebucket -l --bucket /var/lib/puppet/clientbucket restore /info.txt c62004ae89cd16e305744a35f57d8a24

# check
sudo cat /info.txt

# view/show content of file
sudo puppet filebucket -l --bucket /var/lib/puppet/clientbucket get c62004ae89cd16e305744a35f57d8a24
