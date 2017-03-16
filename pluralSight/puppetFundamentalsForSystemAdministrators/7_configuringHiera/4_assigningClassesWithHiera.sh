# 4_Assigning Classes with Hiera

sudo nano /etc/puppet/environments/production/manifests/nodes.pp
# clear classes definitions
node 'wiki' {
  hiera_include('classes')
}

node 'wikitest' {
  hiera_include('classes')
}

sudo nano /var/lib/hiera/wiki.yaml
---
classes:
  - mediawiki
  - linux
  mediawiki::wikisitename: wiki
  mediawiki::wikimetanamespace: Wiki
  mediawiki::wikiserver: http:://172.31.0.202
  mediawiki::wikidbname: wiki

sudo nano /var/lib/hiera/wikitest.yaml
---
classes:
  - mediawiki
  - linux
  mediawiki::wikisitename: wikitest
  mediawiki::wikimetanamespace: Wikitest
  mediawiki::wikiserver: http:://172.31.0.203
  mediawiki::wikidbname: wikitest
