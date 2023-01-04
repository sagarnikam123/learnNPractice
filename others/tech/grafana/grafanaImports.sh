#!/usr/bin/env bash

#######################################################################################################################
# This will imports all datasources & dashboards into Grafana from a backup_* folder

# How to run
# chmod +x grafanaImports.sh
# sh grafanaImports.sh
#######################################################################################################################

# variables
export token=xxxxxxxxx #admin token
export grafanaurl=http://localhost:3000/api # grafana url

# backup folder
if [ -z "$BACKUPDIR" ]
then
      BACKUPDIR=backup_$(date +%Y%m%d_)
else
      echo "Using $BACKUPDIR as backup folder"
fi

cd $BACKUPDIR*

# imports dashboards
for FILE in *dashboard*; do
  echo Importing Dashboard: $FILE
  cat $FILE | jq '. * {overwrite: true, dashboard: {id: null}}' | curl -X POST -H "Content-Type: application/json" -H "Authorization: Bearer $token" "$grafanaurl/dashboards/db" -d @- ;
done

# imports datasources
for FILE in *datasource*; do
  echo Importing Dashboard: $FILE
  cat $FILE | curl -X POST -H "Content-Type: application/json" -H "Authorization: Bearer $token" "$grafanaurl/datasources/" -d @- ;
done

cd ..

# https://www.ifconfig.it/hugo/2021/12/backup-grafana-dashboards-with-api-and-jq/
# https://gist.github.com/crisidev/bd52bdcc7f029be2f295
