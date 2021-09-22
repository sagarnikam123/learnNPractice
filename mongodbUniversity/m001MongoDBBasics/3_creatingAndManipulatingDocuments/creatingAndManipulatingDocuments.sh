# Inserting New Documents - insert() and errors:

# connect
mongosh "mongodb+srv://sandbox.xxxxx.mongodb.net/sample_restaurants" --username m001-student
mongosh "mongodb+srv://m001-student:m001-mongodb-basics@sandbox.xxxxx.mongodb.net"
###############################################################################

# 1. Get a random document from a collection
use sample_training
show collections
db.inspections.findOne()
# 2. Copy this random document, and insert it back to the collection. Do you get
#    a "Duplicate Key" error?
# MongoServerError: E11000 duplicate key error collection: sample_training.inspections index: _id_ dup key: { _id: ObjectId('56d61033a378eccde8a8354f') }
db.inspections.insertOne(
    {
    _id: ObjectId("56d61033a378eccde8a8354f"),
    id: '10021-2015-ENFO',
    certificate_number: 9278806,
    business_name: 'ATLIXCO DELI GROCERY INC.',
    date: 'Feb 20 2015',
    result: 'No Violation Issued',
    sector: 'Cigarette Retail Dealer - 127',
    address: { city: 'RIDGEWOOD', zip: 11385, street: 'MENAHAN ST', number: 1712 }
    }
)

# 3. Insert that document into the collection without the _id field to get a
#    successfull insert. Did it work?
# Yes
db.inspections.insertOne(
    {
    id: '10021-2015-ENFO',
    certificate_number: 9278806,
    business_name: 'ATLIXCO DELI GROCERY INC.',
    date: 'Feb 20 2015',
    result: 'No Violation Issued',
    sector: 'Cigarette Retail Dealer - 127',
    address: { city: 'RIDGEWOOD', zip: 11385, street: 'MENAHAN ST', number: 1712 }
    }
)
db.inspections.find({id: '10021-2015-ENFO', certificate_number: 9278806, }).pretty()
###############################################################################
# Inserting New Documents - insert() order:

# 1. Insert three test documents into the inspections collection
#    db.inspections.insert([{"test":1},{"test":2},{"test":3}])
db.inspections.insertOne([{"test":1},{"test":2},{"test": 3} ])
# 2. Insert the same three documents into the inspections collection. Did it
#    work? Why?
# Yes, insertion works successfully. bcoz _id was not same in the given documents
db.inspections.insertOne([{"test":1},{"test":2},{"test": 3} ])

# 3. Insert these three test documents into the inspections collection. Did it
#    work? Why?
db.inspections.insert([{"_id": 1, "test": 1},{"_id": 1, "test": 2},{"_id": 3,"test": 3}])
# MongoBulkWriteError: E11000 duplicate key error collection: sample_training.inspections index: _id_ dup key: { _id: 1 }
# duplicate _id key

# 4. Try the same insert as above but make it unordered.
db.inspections.deleteOne({"_id":1})
db.inspections.insert([{"_id": 1, "test": 1},{"_id": 2, "test": 2},{"_id": 3,"test": 3}])
# 5. Try this command. Did it work? Why?
# db.inspection.drop() # incase if it was available before
db.inspection.insert([{ "_id":1, "test": 1 },{ "_id": 3,"test": 3 }])
db.inspection.find()
# Yes, it worked because the Database was different (inspection)
###############################################################################
# Updating Documents  - mongo shell

# 1. Find all documents in the zips collection where the zip field is equal to
#    12434.
use sample_training
db.zips.find({"zip" : '12434'})
# 2. Find all documents in the zips collection where the city field is equal to
#    "HUDSON".
db.zips.find( { "city" : "HUDSON"} ).pretty()
# 3. Find how many documents in the zips collection have the city field is equal
#    to "HUDSON".
db.zips.find( { "city" : "HUDSON"} ).count()
# 4. Update all documents in the zips collection where the city field is equal
#    to "HUDSON" by adding 10 to the current value of the "pop" field.
db.zips.updateMany( {"city" : "HUDSON"}, { "$inc": {"pop" : 10}})
# 5. Update a single document in the zips collection where the zip field is
 #    equal to 12534 by setting the value of the "pop" field to 17630.
db.zips.findOne( {"zip" : "12534"})
db.zips.updateOne( {"zip" : "12534"}, { "$set": {"pop" : 17630}})
db.zips.findOne( {"zip" : "12534"})
# 6. Update a single document in the zips collection where the zip field is
#    equal to 12534 by setting the value of the "population" field to 17630.
db.zips.updateOne( {'zip' : '12534'}, {'$set' : { 'population' : 17630}})
# 7. Find all documents in the grades collection where the student_id is 151,
#    and the class_id field is 339.
db.grades.find( {'student_id' : 151, 'class_id': 339} ).pretty()
# 8. Find all documents in the grades collection where the student_id is 250,
#    and the class_id field is 339.
db.grades.find( {'student_id' : 250, 'class_id': 339} ).pretty()
# 9. Update one document in the grades collection where the student_id is 250,
#    and the class_id field is 339, by adding a document element to the "scores"
#    array.
db.grades.updateOne( {'student_id' : 250, 'class_id': 339}, {'$push' : {'scores' : {'type':'extra credit', 'score':100} } } )
db.grades.find( {'student_id' : 250, 'class_id': 339} ).pretty()
###############################################################################
# Practice Question:

# People often confuse NEW YORK City as the capital of New York state, when in
# reality the capital of New York state is ALBANY.
db.zips.find({'city' : 'ALBANY'}).pretty()
db.zips.find({'city' : 'ALBANY'}).count()
db.zips.find({'city' : 'ALBANY', 'state' : 'NY'}).pretty()
db.zips.find({'city' : 'ALBANY', 'state' : 'NY'}).count()
db.zips.find({'state' : 'NY'})
db.zips.find({'city' : 'NEW YORK', 'state' : 'NY'}).pretty()
db.zips.find({'city' : 'NEW YORK', 'state' : 'NY'}).count()
# Add a boolean field "capital?" to all documents pertaining to ALBANY NY, and
# NEW YORK, NY. The value of the field should be true for all ALBANY documents
# and false for all NEW YORK documents.
db.zips.find({'city' : 'ALBANY', 'state' : 'NY'}).count()
db.zips.updateMany( {'city' : 'ALBANY', 'state' : 'NY'}, {'$set': {'capital' : true} } )
db.zips.find({'city' : 'ALBANY', 'state' : 'NY'}).limit(2).pretty()
db.zips.find({'city' : 'NEW YORK', 'state' : 'NY'}).count()
db.zips.updateMany( {'city' : 'NEW YORK', 'state' : 'NY'}, {'$set': {'capital' : false} } )
db.zips.find({'city' : 'NEW YORK', 'state' : 'NY'}).limit(2).pretty()
###############################################################################
# Deleting Documents and Collections

# 1. Look at all the documents in the inspections collection that have test field
#    equal to 1.
db.inspections.find( {'test' : 1} ).pretty()
db.inspections.find( {'test' : 1} ).count()
# 2. Look at all the documents in the inspections collection that have test field
#    equal to 3.
db.inspections.find( {'test' : 3} ).pretty()
db.inspections.find( {'test' : 3} ).count()
# 3. Delete all the documents from the inspections collection that have test
#    field equal to 1
db.inspections.deleteMany( {'test' : 1} )
# 4. Delete one document from the inspections collection that has test field
#    equal to 3
db.inspections.deleteOne({'test' : 3})
# 5. Inspect what is left of the inspection collection.
db.inspection.find()
# 6. View what collections are present in the sample_training database.
show collections
# 7. Drop the inspection collection
db.inspection.drop()
show collections
###############################################################################