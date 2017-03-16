# 2_Using Hiera Data in Modules

cat /etc/puppet/hiera.yaml

sudo nano /etc/puppet/environments/production/modules/mediawiki/manifests/init.pp
class mediawiki {

  $wikimetanamespace = hiera('mediawiki::wikimetanamespace')
  $wikisitename = hiera('mediawiki::wikisitename')
  $wikiserver = hiera('mediawiki::wikiserver')
  $wikidbserver = hiera('mediawiki::wikidbserver')
  $wikidbname = hiera('mediawiki::wikidbname')
  $wikidbuser = hiera('mediawiki::wikidbuser')
  $wikidbpassword = hiera('mediawiki::wikidbpassword')
  $wikiupgradekey = hiera('mediawiki::wikiupgradekey')

}

sudo nano /etc/puppet/hiera.yaml
:backends:
  - yaml
:yaml:
  :datadir:
:hierarchy:
  - "%{clientcert}"
  - wikidefault
