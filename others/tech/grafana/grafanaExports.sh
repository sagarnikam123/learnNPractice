#!/usr/bin/env bash

#######################################################################################################################
# This will exports all datasources & dashboards into json file inside a backup_* folder

# How to run
# chmod +x grafanaExports.sh
# sh grafanaExports.sh
#######################################################################################################################

# variables
export token=xxxxxxxxx #admin token
export grafanaurl=http://localhost:3000/api # grafana url

# backup folder
BACKUPDIR=backup_$(date +%Y%m%d_%H%M)
mkdir -p $BACKUPDIR
cd $BACKUPDIR

# datasource exports
datasources=$(curl -s -H "Authorization: Bearer $token" -X GET $grafanaurl/datasources)
for uid in $(echo $datasources | jq -r '.[] | .uid'); do
  uid="${uid/$'\r'/}" # remove the trailing '/r'
  curl -s -H "Authorization: Bearer $token" -X GET "$grafanaurl/datasources/uid/$uid" | jq > grafana-datasource-$uid.json
  slug=$(cat grafana-datasource-$uid.json | jq -r '.name')
  mv grafana-datasource-$uid.json grafana-datasource-$uid-$slug.json # rename with datasource name and id
  echo "Datasource $uid exported"
done

# dashboard exports
#dashboards=$(curl -s -H "Authorization: Bearer $token" -X GET $grafanaurl/search?folderIds=0&query=&starred=false)
dashboards=$(curl -s -H "Authorization: Bearer $token" -X GET $grafanaurl/search)
for uid in $(echo $dashboards | jq -r '.[] | .uid'); do
  uid="${uid/$'\r'/}" # remove the trailing '/r'
  curl -s -H "Authorization: Bearer $token" -X GET "$grafanaurl/dashboards/uid/$uid" | jq > grafana-dashboard-$uid.json
  slug=$(cat grafana-dashboard-$uid.json | jq -r '.meta.slug')
  mv grafana-dashboard-$uid.json grafana-dashboard-$uid-$slug.json # rename with dashboard name and id
  echo "Dashboard $uid exported"
done

cd ..

# https://www.ifconfig.it/hugo/2021/12/backup-grafana-dashboards-with-api-and-jq/
# https://gist.github.com/crisidev/bd52bdcc7f029be2f295
