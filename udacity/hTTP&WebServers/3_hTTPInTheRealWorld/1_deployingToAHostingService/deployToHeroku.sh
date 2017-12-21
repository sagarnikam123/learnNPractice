# Deploying app to Heroku

# initialise git repo
git init
git add BookmarkServer.py
git commit -m "Checking in my bookmark server!" .
git add runtime.txt
git add requirements.txt
git add Procfile
git commit -m "procfile" Procfile
git commit -m "runtime" runtime.txt
git commit -m "requirement" requirements.txt
git commit -m "Use PORT from environment" BookmarkServer.py

# login to Heroku
heroku auth:login

# creating heroku app
heroku create bookmarkheroku

# pushing
git push heroku master

# http://bookmarkheroku.herokuapp.com/

# logs
https://dashboard.heroku.com/apps/bookmarkheroku/logs
