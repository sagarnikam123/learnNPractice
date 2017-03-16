# 2_Creating File Templates


# LocalSettings.php
$wgSitename = "wiki";
$wgMetaNamespace = "Wiki";
$wgServer = "http://172.31.0.202";
$wgDBserver = "localhost";
$wgDBname = "wiki";
$wgDBuser = "root";
$wgDBpassword = "training";
$wgUpgradeKey = "06294ccc09cd36a9";

# putting on puppet master
#LocalSettings.erb (embedded ruby block)
$wgSitename = "<%= wikisitename %>";
$wgMetaNamespace = "<%= wikimetanamespace %>";
$wgServer = "<%= wikiserver %>";
$wgDBserver = "<%= wikidbserver %>";
$wgDBname = "<%= wikidbname %>";
$wgDBuser = "<%= wikidbuser %>";
$wgDBpassword = "<%= wikidbpassword %>";
$wgUpgradeKey = "<%= wikiupgradekey %>";

# on puppet master
sudo mkdir /etc/puppet/environments/production/modules/mediawiki/templates
sudo nano /etc/puppet/environments/production/modules/mediawiki/templates/LocalSettings.erb
