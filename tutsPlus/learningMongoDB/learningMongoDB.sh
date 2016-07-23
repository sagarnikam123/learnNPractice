#################################
#	TutsPlus - Learning MongoDB	#
#################################

#########################
#	05-create	- 8.20	#
#########################

mongo	#starts mongo db client
show dbs	# shows databases
use test	# connect/switched to test database
db	# (variable) shows current database to be using
use bookmarks	# not actually creates db,untill we store something in it
db	# similar to db.getName()
db.links	# creates links collection
db.links.count()	# counts all records in collection
db.version()	# current version of the server
db.stats()	# statistics for current database
use admin	# switched to db admin
db.shutdownServer()	# shutdowns server

# inserting document
db.links.insert( 
	{
		title: "Tuts+ Premium", 
		url: "http://tutsplus.com", 
		comment: "great video courses !", 
		tags: ["tutorials","dev"], 
		saved_on: new Date() 
	}
);

# make insertable document & then insert
var doc = {}
doc.title="Nettuts+"
doc.url="http://net.tutsplus.com"
doc.comment="best tutorials on the web"
doc.tags= ["tutorials", "web dev"]
doc.saved_on= new Date()
doc.meta={}
doc.meta.browser="Google Chrome 24"
doc.meta.OS="Mac 10.8.2"

# inserting pre-made document
db.links.save(doc)	# inserts if not, or update if already exists
db.links.find()	# shows all documents, returns an array
db.links.find()[0]	# returns an array
db.links.find().forEach(printjson);	# print each record as json
db.links.findOne()	# finds first element


#############################
#	06-objectids	- 7.42	#
#############################
db.links.insert({_id:3,name:"test"}  ) # inserting manual Object Id
db.links.find()[0]._id
db.links.find()[0]._id.getTimestamp()
new ObjectId	# prints new(unique) object id
ObjectId()	# same as above

function counter(name){
	var ret = db.counters.findAndModify( {query: {_id:name},update:{$inc :{next:1}},"new":true,upsert:true } );
	return ret.next;
	}

db.products.insert( {_id: counter("products"),name: "product 1"} )	
db.products.insert( {_id:counter("products"), name:"product 2"} )
db.products.insert( {_id:counter("products"), name:"product 3"} )
db.products.find()
db.counters.find(0)

#############################
#	07-relations	- 8.32	#
#############################

db.links.find().forEach(printjson)
db.users.insert({name: "Andrew"} )
var a = db.users.findOne( {name : "Andrew" } )
a
a._id
db.links.insert( {title: "Psdtuts+", url: "http://psd.tutsplus.com", userId:a._id} );
db.links.find()[3]
link = db.links.find()[3]
db.users.findOne( {_id: link.userId} );

#############################
#	08-queries-1	- 14.25	#
#############################

db.users.drop()	# drops the collection
# running .js file containing data/code to import
bin/mongo 127.0.0.1/bookmarks '/home/hadoop/Desktop/Learn/mongodb/prev/bookmarks.js'
bin/mongo bookmarks	# directly connects to bookmarks database
db.links.find()
db.links.find().forEach(printjson)
db.users.find()
db.users.find().forEach(printjson)

# serching document with specific value (of field)
db.users.find( { email:'johndoe@gmail.com'}) # returns cursor object
db.users.findOne({email:'johndoe@gmail.com'} ) # gives (json formatted) object document
db.users.find( { passwordHash: 'another_password_hash'} ).forEach(printjson)
db.links.find( {favourites:100 } ).forEach(printjson)
db.links.find( {tags: 'code'} ).forEach(printjson)
db.users.findOne({email:'johndoe@gmail.com'} ).name

db.links.find( {favourites:100}, {title:1,url:true} )	# finding required fields only
db.links.find( {favourites:100}, {tags:0}  ).forEach(printjson)	# excluding one fields
db.links.find( {favourites:100}, {title:1, url:1, _id:0}  )

db.users.findOne( {'name.first':'John'}  )
db.users.findOne( {'name.first': 'John'} , {'name.last':1} )
var john = db.users.findOne( {'name.first':'John'} )
db.links.find( {userId: john._id}, {title:1, _id:0} )

#########################
# 09-queries-2	- 7.57	#
#########################

db.links.find( {favourites: {$gt:150}} , {title:1, favourites:1, _id:0})
db.links.find( {favourites: {$lt:150}} , {title:1, favourites:1, _id:0})
db.links.find( {favourites: {$lt:100}} , {title:1, favourites:1, _id:0})
db.links.find( {favourites: {$lte:100}}, {title:1, favourites:1, _id:0} )
db.links.find( {favourites: {$gte:100}}, {title:1, favourites:1, _id:0} )

db.links.find( {favourites: {$gt: 100, $lt: 300}}, {title:1, favourites:1, _id:0} )
db.links.find( {favourites: {$gte: 100, $lte: 300}}, {title:1, favourites:1, _id:0} )

db.users.find({'name.first': {$in : ['John','Jane']}  }, {'name.first':1,_id:0}  )
db.users.find( {'name.first': {$nin:['John','Jane']  }}, {'name.first':1} )
db.links.find( {tags: {$in : ['marketplace','code']}},{title:1, tags:1, _id:0}  )

db.links.find( {tags: {$all: ['marketplace','code']} }, {title:1,tags:1,_id:0} )

#############################
#	10-queries-3	- 15.30	#
#############################

db.users.find( {'name.first': {$ne: 'John'}} )
db.users.find({$or: [{'name.first':'John'},{'name.last':'Wilson'}] },{name:1}  )
db.users.find( {$or: [{'name.first':'John'}, {'name.last':'Doe'}]}, {name:1}  )
db.users.find( {$nor:[{'name.first':'John'},{'name.last':'Wilson'}] },{name:1} )
db.users.insert( {name: {first:'John',last:'Jones'}}  )	# inserting extra element for testing
db.users.find( {$and: [{'name.first':'John'},{'name.last':'Jones'}]},{name:1}  )

db.users.find( {email: {$exists: true}},{name:1,_id:0} )
db.users.find( {email: {$exists:false}},{name:1,_id:0}  );

db.links.find( {favourites: {$mod: [5,0]}},{title:1,favourites:1,_id:0} )
db.links.find( {favourites: {$not:{ $mod:[5,0]}}},{title:1,favourites:1,_id:0} )


db.links.find({favourites: {$not:{$lt:150}}},{favourites:1,_id:0})
db.links.find( {favourites: {$gte:150}},{favourites:1,_id:0})	# same as above

db.users.find( {logins: {$elemMatch:{minutes:20}  }},{name:1,logins:1} ).forEach(printjson)
db.users.find( {logins: { $elemMatch: {at: {$lt: new Date(2012,3,02)}  } } },{name:1,logins:1}  ).forEach(printjson)

db.users.find( {$where:'this.name.first=== "John"' }  )
db.users.find( {$where: 'this.name.first==="John"',age:30} ).forEach(printjson)
db.users.find('this.name.first === "John"'  )
var f = function(){return this.name.first==="John"}
db.users.find(f)
db.users.find( {$where : f})
 
#############################
#	11-queries-4	- 8.40	#
#############################

db.links.distinct('favourites')
db.links.distinct('url')
# grouping - Not running
db.links.group({ 
	key: {userId:true}, 
	initial: {favCount:0}, 
	reduce: function(doc, o){ o.favCount += doc.favourites; }, 
	finalize: function(o) { o.name = db.users.findOne( {_id : o.userId}).name;  }
	} );
# finding using regualr expression
db.links.find({title: /tuts\+$/}, {title:1}  )
db.links.find( { title: {$regex:/tuts\+$/ } }, {title:1})
db.links.find({title: {$regex: /tuts\+$/, $ne : 'Mobiletuts+' } },{title:1})

#############################
#	12-queries-5	- 6.59	#
#############################

# Counting
db.users.find( { 'name.first': 'John'} ).count()
db.users.count({'name.first':'John'})
db.links.count()
db.users.count()
# Sorting
db.links.find( {},{title:1,_id:0} ).sort( {title:1})
db.links.find( {},{title:1,favourites:1,_id:0}).sort( {favourites:-1})
db.links.find({},{title:1, favourites:1,_id:0}).sort({favourites:-1,title:1})
# limiting
db.links.find({},{title:1,favourites:1,_id:0}).sort({favourites:1}).limit(1)
db.links.find({},{title:1,favourites:1,_id:0}).sort({favourites: - 1}).limit(1)
db.links.find().limit(2).forEach(printjson)
# skipping records/ pagination
db.links.find({},{title:1,_id:0,favourites:1}).skip(0*3).limit(3)
db.links.find({},{title:1,_id:0,favourites:1}).skip(1*3).limit(3)
db.links.find({},{title:1,_id:0,favourites:1}).skip(2*3).limit(3)

#############################
#	13-updates-1	- 14.08	#
#############################

db.users.update( {'name.first':'John'},{job:'developer'});
db.users.update( {name: "Kate Wills"},{name: "Kate Wills", job:"LISP Developer"})
db.users.find( {name:"Kate Wills"})
# upsert
db.users.find( {name:"Kate Wills"})
db.users.update({name:'Kate Wills'}, {name:'Kate Wills',job:'LISP Developer'},true)
db.users.find( {name:"Kate Wills"})
# Modification
var n = {title:'Nettuts+'}
db.links.find(n, {title:1,favourites:1,_id:0})
db.links.update(n,{$inc: {favourites:5}})
db.links.find(n, {title:1,favourites:1,_id:0})
db.links.update(n,{$inc: {favourites:-5}})
db.links.find(n,{title:1,favourites:1,_id:0})
# set- to change a field/ add a new field if not exits
# unset - to remove the field
var q = {name: "Kate Wills"}
db.users.find(q)
db.users.update(q, {$set: {job: "Web Developer"}} )
db.users.find(q)
db.users.update(q, {$set: {email: 'katewills@gmail.com'} }  )
db.users.update(q, {$unset: {job: 'Web Developer'}})
db.users.find(q)
# updating multiple document
db.users.insert({name: {first: 'Jane'}} )
db.users.find({'name.first': 'Jane'}, {name:1})
db.users.update({'name.first': 'Jane'},{job:'developer'})
db.users.find({'name.first': 'Jane'},{name:1, job: 1})
db.users.update( {'name.first':'Jane'},{$set: {job: 'developer'}},false,true  )
db.users.find({'name.first': 'Jane'},{name:1, job: 1})
# save - to update
var bob = db.users.findOne({'name.first':'Bob'})
bob
bob.job= 'Server Admin'
bob
db.users.save(bob)
db.users.findOne({'name.first':'Bob'})
# findAndModify
db.users.findAndModify({ query: {name:'Kate Wills'}, update: {$set: {age: 20} }, new: true }); # shows newly updated document
db.users.findAndModify( {query: {name: 'Kate Wills'}, update:{$set: {age: 30}} }  )# shows previous document
db.users.findOne({name:'Kate Wills'})
# sort
db.links.findAndModify({
	query: {favourites: 95},
	update:{ $inc : {favourites: 10}},
	sort: {title:1},
	new: true,
	fields: {title:1, favourites:1,_id:0}
	} );

#############################
#	14-updates-2 - 11.21	#
#############################
