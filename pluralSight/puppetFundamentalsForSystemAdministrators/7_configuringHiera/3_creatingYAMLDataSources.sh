# 3_Creating YAML Data Sources

sudo nano /etc/puppet/environments/production/manifests/nodes.pp
# clear $wiki... variables from node 'wiki'

#
sudo puppet cert list --all

sudo nano /var/lib/hiera/wiki.yaml
---
mediawiki::wikisitename: wiki
mediawiki::wikimetanamespace: Wiki
mediawiki::wikiserver: http:://172.31.0.202
mediawiki::wikidbname: wiki

sudo nano /var/lib/hiera/wikitest.yaml
---
mediawiki::wikisitename: wikitest
mediawiki::wikimetanamespace: Wikitest
mediawiki::wikiserver: http:://172.31.0.203
mediawiki::wikidbname: wikitest

sudo nano /var/lib/hiera/wikidefault.yaml
---
mediawiki::wikidbserver: localhost
mediawiki::wikidbuser: root
mediawiki::wikidbpassword: training
mediawiki::wikiupgradekey: puppet
