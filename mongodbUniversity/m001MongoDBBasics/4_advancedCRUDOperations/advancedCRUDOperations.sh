# Citi Bike Historical data - https://www.citibikenyc.com/system-data

# connect
mongosh "mongodb+srv://sandbox.xxxxx.mongodb.net/sample_restaurants" --username m001-student
mongosh "mongodb+srv://m001-student:m001-mongodb-basics@sandbox.xxxxx.mongodb.net"
###############################################################################
# Query Operators - Comparison

# 1. Find all documents where the trip was less than or equal to 70 seconds
#    and the usertype was not "Subscriber"
use sample_training
db.trips.find( {'tripduration' : { '$lte' : 70}, 'usertype' : {'$ne' : 'Subscriber'}} ).pretty()
# 2. Find all documents where the trip was less than or equal to 70 seconds
#    and the usertype was "Customer" using a redundant equality operator.
db.trips.find( {'tripduration' : { '$lte' : 70}, 'usertype' : {'$eq' : 'Customer'}} ).pretty()
# 3. Find all documents where the trip was less than or equal to 70 seconds
#    and the usertype was "Customer" using the implicit equality operator.
db.trips.find( { 'tripduration' :{'$lte' : 70}, 'usertype' : 'Customer'}).pretty()

###############################################################################
# Query Operators - Logic

# Find all documents where airplanes CR2 or A81 left or landed in the KZN
# airport.
use sample_training
db.routes.find( {'$and' :[ { '$or' : [ {'dst_airport' : 'KZN'}, {'src_airport' : 'KZN'}] }, { '$or' : [{'airplane': 'CR2'}, {'airplane': 'A81'}]} ] } ).pretty()

###############################################################################
# Expressive Query Operator

# 1. Find all documents where the trip started and ended at the same station.
use sample_training
db.trips.find({ '$expr': {'$eq': ['$end station id', '$start station id']}  }).count()
# 2. Find all documents where the trip lasted longer than 1200 seconds, and
#    started and ended at the same station.
db.trips.find({ "$expr": { "$and": [ { "$gt": [ "$tripduration", 1200 ]},
                         { "$eq": [ "$end station id", "$start station id" ]}
                       ]}}).count()

###############################################################################
# Array Operators

# 1. Find all documents that contain more than one amenity without caring
#    about the order of array elements.
use sample_airbnb
db.listingsAndReviews.find( { '$expr' : { '$gt': [{'$size': '$amenities'}, 1]} } ).count()
# 2. Only return documents that list exactly 20 amenities in this field and
#    contain the amenities of your choosing.
db.listingsAndReviews.find( {'amenities' : { '$size' : 20, '$all' : [ "Internet", "Wifi",  "Kitchen",
"Heating", "Family/kid friendly", "Washer", "Dryer", "Essentials", "Shampoo", "Hangers", 
"Hair dryer", "Iron", "Laptop friendly workspace" ] }  } ).count()

###############################################################################
# Array Operators and Projection

# 1. Find all documents in the sample_airbnb database with exactly 20
#    amenities which include all the amenities listed in the query array, and display their price and address.
use sample_airbnb
db.listingsAndReviews.find({'amenities' : {
    '$size' : 20, 
    '$all' : [ "Internet", "Wifi",  "Kitchen", "Heating","Family/kid friendly", "Washer", "Dryer",
    "Essentials", "Shampoo", "Hangers","Hair dryer", "Iron", "Laptop friendly workspace" ]
    } }, {'price' : 1, 'address' : 1}).pretty()
# 2. Find all documents in the sample_airbnb database that have Wifi as one of
#    the amenities only include price and address in the resulting cursor.
db.listingsAndReviews.find( {'amenities': 'Wifi'}, {'price': 1, 'address': 1, '_id': 0} ).pretty()
# 3. Find all documents in the sample_airbnb database that have Wifi as one of
#    the amenities only include price and address in the resulting cursor,
#    also exclude "maximum_nights".
# MongoServerError: Cannot do exclusion on field maximum_nights in inclusion projection
db.listingsAndReviews.find( {'amenities': 'Wifi'}, {'price': 1, 'address': 1, 'maximum_nights': 0} ).pretty()
#    Was this operation successful? Why?
# No this opration was not successful, because we cannot do exclusion on field 'maximum_nights' in inclusion projection
# 4. Find all documents in the grades collection where the student in class
#    431 received a grade higher than 85 for any type of assignment.
use sample_training
db.grades.findOne()
db.grades.find( {'class_id' : 431}, {'scores' : {'$elemMatch': {'score': {'$gt': 85}} } } ).pretty()
# 5. Find all documents in the grades collection where the student had an
#    extra credit score.
db.grades.find( {'scores': {'$elemMatch' : {'type' : 'extra credit'} } }).pretty()

###############################################################################
# Array Operators and Sub-Documents

use sample_training
db.trips.findOne( {'start station location.type' : 'Point'} )
# 1. Find any document from the companies collection where the last name
#    Zuckerberg in the first element of the relationships array.
db.companies.findOne({}, {'relationships':1})
db.companies.find({'relationships.0.person.last_name' : 'Zuckerberg'},
    {'name':1}).pretty()
# 2. Find how many documents from the companies collection have CEOs who's
#    first name is Mark and who are listed as the first relationship in this
#    array for their company entry.
db.companies.find({'relationships.0.person.first_name' : 'Mark',
'relationships.0.title': {'$regex': 'CEO'}},{'name':1}).count()
# 3. Find all documents in the companies collection where people named Mark
#    used to be in the senior company leadership array, a.k.a the
#    relationships array, but are no longer with the company.
db.companies.find({'relationships': {'$elemMatch' : {'is_past': true, 'person.first_name' : 'Mark'}}}, 
{'name': 1}).count()

###############################################################################
# Query Operators - Comparison

# 1. How many documents in the sample_training.zips collection have fewer than
#    1000 people listed in the pop field?
use sample_training
db.zips.find().limit(1).pretty()
db.zips.find( {'pop' : { '$lt': 1000}} ).count()
# 2. What is the difference between the number of people born in 1998 and the
#    number of people born after 1998 in the sample_training.trips collection?
db.trips.find().limit(1).pretty()
db.trips.find( { 'birth year': 1998} ).count()
db.trips.find( { 'birth year': { '$gt' : 1998} } ).count()
# 3. Using the sample_training.routes collection find out which of the
#    following statements will return all routes that have at least one stop
#    in them?
db.routes.find({ "stops": { "$gt": 0 }}).pretty()
#   -  db.routes.find({ "stops": { "$gte": 0 }}).pretty()
db.routes.find({ "stops": { "$ne": 0 }}).pretty()
#   -  db.routes.find({ "stops": { "$lt": 10 }}).pretty()

###############################################################################
# Query Operators - Logic

# 1. How many businesses in the sample_training.inspections dataset have the
#    inspection result "Out of Business" and belong to the Home Improvement
#    Contractor - 100 sector?
use sample_training
db.inspections.find().limit(2).pretty()
db.inspections.find( {'$and' : [ {'result': 'Out of Business'}, {'sector': 'Home Improvement Contractor - 100'} ] }).count()
# 2. How many zips in the sample_training.zips dataset are neither over-
#    populated nor under-populated?
#    In this case, we consider population over 1,000,000 to be over-populated
#    and under 5,000 to be under-populated.
db.zips.find().limit(2).pretty()
db.zips.find( {'$nor' : [ {'pop' : {'$gt' : 1000000 }}, {'pop' : {'$lt' : 5000 }} ]} ).count()
# 3. How many companies in the sample_training.companies dataset were either
#    founded in 2004, or in the month of October and either have the social
#    category_code or web category_code?
db.companies.find().limit(1)
db.companies.find({ '$or' : [ 
    {'founded_year': 2004 ,'$or':[{'category_code' : 'social'}, {'category_code' : 'web'}]},
    {'founded_month': 10 ,'$or':[{'category_code' : 'social'}, {'category_code' : 'web'}]} 
    ]} ).count()
db.companies.find( {'founded_year': 2004 ,'$or':[{'category_code' : 'social'}, {'category_code' : 'web'}]} ).count()

###############################################################################
# Expressive Query Operator

# How many companies in the sample_training.companies collection have the same
# permalink as their twitter_username?
db.companies.find( {'$expr' : { '$eq' : ['$twitter_username', '$permalink']} } ).count()

###############################################################################
# Array Operators

# 1. What is the name of the listing in the sample_airbnb.listingsAndReviews
#    dataset accommodate more than 6 people and has exactly 50 reviews?
db.listingsAndReviews.find( { 'accommodates' : {'$gt': 6}, 'number_of_reviews' : 50} ).count()
# 2. How many documents have the property_type House, and include Changing
#    table as one of the amenities?
db.listingsAndReviews.find( { 'amenities' : { '$all' : ['Changing table']}, 'property_type' : 'House'} ).count()
db.listingsAndReviews.find( { "amenities": { "$all": [ "Free parking on premises", "Wifi", "Air conditioning" ] }, "bedrooms": { "$gte":  2 } } ).pretty()

###############################################################################
# Array Operators and Projection

# How many companies in the sample_training.companies collection have offices
# in the city of Seattle?
use sample_training
db.companies.findOne()
db.companies.findOne({}, {'offices' : 1})
db.companies.find({'offices': {'$elemMatch': { 'city' : 'Seattle'} }}).count()

###############################################################################
# Array Operators and Sub-Documents

# 1. Latitude decreases in value as you move west.

#    How many trips in the sample_training.trips collection started at
#    stations that are to the west of the -74 latitude coordinate?
use sample_training
db.trips.findOne()
db.trips.find({'start station location.coordinates.0': {'$lt': -74 }}).count()
# 2. How many inspections from the sample_training.inspections collection were
#    conducted in the city of New York?
db.inspections.findOne()
db.inspections.find({ 'address.city': 'NEW YORK' }).count()

###############################################################################