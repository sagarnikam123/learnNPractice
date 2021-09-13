# importing, exporting & querying Data

# connect
mongosh "mongodb+srv://sandbox.xxxxx.mongodb.net/sample_restaurants" --username m001-student
mongosh "mongodb+srv://m001-student:m001-mongodb-basics@sandbox.xxxxx.mongodb.net"
###############################################################################
# export

# bson
#mongodump --uri "mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_geospatial"
mongodump --uri "mongodb+srv://m001-student:m001-mongodb-basics@sandbox.xxxxx.mongodb.net/sample_geospatial" --collection=shipwrecks

# json
#mongoexport --uri="mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_geospatial" --collection=sales --out=sales.json
mongoexport --uri="mongodb+srv://m001-student:m001-mongodb-basics@sandbox.xxxxx.mongodb.net/sample_geospatial" --collection=shipwrecks --out=shipwrecks.json
###############################################################################
# import

# bson
#mongorestore --uri "mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_geospatial"  --drop dump
mongorestore --uri "mongodb+srv://m001-student:m001-mongodb-basics@sandbox.xxxxx.mongodb.net" --nsFrom="sample_geospatial.*" --nsTo="sample_geospatial2.*" --dir=dump
    # drop database
    use sample_geospatial2
    db.dropDatabase()

# json
#mongoimport --uri="mongodb+srv://<your username>:<your password>@<your cluster>.mongodb.net/sample_geospatial" --drop sales.json
mongoimport --uri="mongodb+srv://m001-student:m001-mongodb-basics@sandbox.xxxxx.mongodb.net" --db="sample_geospatial2" --collection="shipwrecks" --file="shipwrecks.json"
###############################################################################
# find() command - Query Data

show dbs
use sample_training
show collections
# 1. Query the zips collection from the sample_training database to find all 
    # documents where the state is NY.
db.zips.find({"state" : "NY"})
# 2. Iterate through the query results.
it # iterates through the cursor
# 3. Find out how many ZIP codes there are in NY state.
db.zips.find({"state" : "NY"}).count()
# 4. What about the ZIP codes that are in NY but also in the city of ALBANY?
db.zips.find({"state" : "NY", "city" : "ALBANY"})
# 5. Make the cursor look more readable.
db.zips.find({"state" : "NY", "city" : "ALBANY"}).pretty()
###############################################################################
# Data Explorer Quiz:

# In the sample_training.trips collection a person with birth year 1961 took a
# trip that started at "Howard St & Centre St". What was the end station name for
# that trip? 
use sample_training
db.trips.find({"birth year":1969, "start station name" : "Howard St & Centre St"}).pretty()
# "end station name" : "E 6 St & Avenue B"

# Find All the Documents Exercise:
# Using the sample_training.inspections collection find out how many inspections
# were conducted on Feb 20 2015.
use sample_training
db.inspections.find({"date" : "Feb 20 2015" }).count()
###############################################################################