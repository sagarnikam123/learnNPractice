

//making data directory
	sudo mkdir -p /data/db

//exiting from current user
	sudo !!

//user id ()
	id -u
	#1000
//change owner permission (here 1000 is user id)
	sudo chown 1000 /data/db

###############################################################3
//Show databases
	show dbs
//Use Databases ("test" is name of db)
	use test
//Switch to other datbase ("bookmarks" is a database),mongo never creates db until u load data into it(documents/collections) 
  & sets db variable to "bookmarks"
	use bookmarks
	
//Current database selected
	db

//creates collection
	db.links

//View Collections
show collections

//counts collections
	db.links.count()
	
//inserting documents
	db.links.insert({ 
		title:	"Tuts + Premium",
		url:	"http://tutsplus.com",
		comment: "great video course !",
		tags:	["tutorials","dev"],
		saved_on:	new Date()
	});
//create new object/document
	var doc = {};
//adding values to object
	doc.title = "Nettusts+";
	doc.url = "http://net.tutsplus.com";
	doc.comment = "best tutrials on the web";
	doc.tags = ["tutorials","web dev"];
	doc.saved_on = new Date(); 
	doc.meta = {}
	doc.meta.browser = "Google Chrome 24"
	doc.meta.OS = "Mac Os 10.8.2"

//inserting/saving docuemnts
	db.links.save(doc)

// Finding all docuemnts in a collection
	db.links.find()
//prints json in readable foramt
	db.links.find().forEach(printjson);

//inseting another object by insert method
	fox = {};
	fox.title = "Foxid+";
	fox.url = "http://foxid.com";
	fox.comment = "best fekorials on the Earth";
	fox.tags = ["Chutiayapanti","ishq ke kabutars"];
	fox.saved_on = new Date(); 
	fox.meta = {}
	fox.meta.browser = "Google Phrone 99"
	fox.meta.OS = "Tac 10.8.2"


//inseting document with customized id(ObjectId)
	db.links.insert({_id:3,name:"test"});
//ObjectId-12 bytes value,unique
	/* based on 
		1)time
		2)hostname on which server runnign on
		3)process id of server process
		4)random incrementing number */
		
//iterating  over each object/document in colletion
	db.links.find()[0]
	db.links.find()[0]._id
	
//geting time when docuemnt inserted/created
	db.links.find()[0]._id.getTimestamp()
	//ISODate("2013-05-27T14:58:41Z")
	
//Time diff of two obj creation
	db.links.find()[1]._id.getTimestamp() - db.links.find()[0]._id.getTimestamp()


//User defined objectID
	new ObjectId
	new ObjectId()
	// ObjectId("51d84cd79e7c8316906f9f09")


	
//making cutomized ObjectIds (human readable)
	db.products.insert({ _id: counter("products"),name: "product 1"});
	Mon May 27 18:43:21 ReferenceError: counter is not defined (shell):1

	db.products.insert({ _id: counter("products"),name: "product 2"});
	db.products.insert({ _id: counter("products"),name: "product 3"});

//finding single field in object with value
	db.users.insert({name: "Andrew"})
	var a = db.users.findOne({name: "Andrew"})
	db.links.insert({ title: "Psdtuts+",url: "http://psd.tutsplus.com",useId: a._id })
	link = db.links.find()[4]
	db.user.findOne({_id: link.userid})
	
//Dropping collections
	db.users.drop()
	db.links.drop

//Dropping/emptying databse (where db have current database instance)
	db.dropDatabase()
	
//running Javascript file containing mongoDb code
	bin/mongo 127.0.0.1/bookmarks /home/trendwise/Desktop/mongoTry/bookmarks.js 


// Directly connecting to perticular database
	bin/mongo bookmarks

//Finding specific/multiple in collection (should give object in find method)
	db.users.find({email : 'johndoe@gmail.com'}); //return a cursor object
	db.users.find({password: 'another_password_has'}).forEach(printjson)
	db.links.find({favourites:1000}).forEach(printjson);
	//search inside array
	db.links.find({tags:'code'}).forEach(printjson);
	db.users.findOne({email:'johndoe@gmail.com'}).name ;
	db.users.findOne({email:'johndoe@gmail.com'}).name.first ; //returns one  
	db.users.find({email:'johndoe@gmail.com'}).name.first ; //returns Nothing  


//gettting selected field with query from object
	db.links.find({favourites:1000}, {title:1,url:true}); //SELECT TITLE,URL FROM LINKS WHERE FAVOURITES=1000
	//getting all data from object except some fields
	db.links.find({favourites:1000},{tags:0}).forEach(printjson);
	db.links.find({favourites:1000},{_id:false,tags:0}).forEach(printjson);
	db.users.findOne({'name.first':'John'} ,{'name.last':1} )
	db.links.find({userId:bob._id},{title:1,_id:0});

//cursor object
//print each json object
	db.links.find().forEach(printjson)


//
	var john = db.users.findOne( {'name.first': 'John'} )
	
	db.links.find( {userId : john._id},{ title: 1 , _id: 0} )	

//MongoDB operators (Greather/Lesser than,equal to)

	db.links.find( {favourites : {$gt:100}} ,{title :1 ,favourites :1 , _id:0} );

	db.links.find( {favourites: {$lt:600}} ,{title:1,favourites:1,_id:1}   );

	db.links.find({favourites: {$lte:507}},{title:1,_id:0,favourites:1} );


	db.links.find( {favourites: { $gte:200 }},{title:1,favourites:1,_id:0} );


//range query (in, nin,all,ne,or,nor,and)

	db.links.find( {favourites: { $gt:500 ,$lte:1000 }},  {title:1,favourites:1,_id:0} );

	db.users.find( {'name.first' : { $in: ['John','Jane'] } }, {'name.first':1} );

	db.users.find( {'name.first' : { $nin: ['John','Jane'] } }, {'name.first':1} );


	db.links.find( {tags: {$in: ['marketplace','code'] }}, { title:1,tags:1,_id:0   } );

	db.links.find( {tags: {$all: ['marketplace','code'] }}, { title:1,tags:1,_id:0   } );

	db.links.find( {tags: { $ne: 'code'}},{title:1,tags:1,_id:0} );

	db.users.find( {'name.first': {$ne : 'John'}} );

	db.users.find( {$or : [ {'name.first':'John'}, {'name.last': 'Wilson'}  ] } );

	db.users.find( {$or : [ {'name.first':'John'}, {'name.last': 'Wilson'}  ] },{_id:0,'name':1} );

	db.users.find( {$or : [ {'name.first':'John'}, {'name.last': 'Doe'}  ] },{_id:0,'name':1} );

	db.users.find( {$nor : [ {'name.first':'John'}, {'name.last': 'Wilson'}  ] },{_id:0,'name':1} );

	db.users.insert( {name: {first:"John",last:"Jones"} } );

	db.users.find( {$or : [ {'name.first':'John'}, {'name.last': 'Wilson'}  ] },{_id:0,'name':1} );

	db.users.find( { $and : [{'name.first':"John"},{'name.last':"Jones"}]},{_id:0,name:1} );

	db.users.find ( {name: {first:"John",last:"Jones"}  });
	
//Other Operators (exists,mod,not,elemMatch,where)
	db.users.find( {email : {$exists:true } },{name:1,_id:0} );

	db.users.find( {email : {$exists:false } },{name:1,_id:0} );

	 db.links.find( {favourites: {$mod : [5,0]} },{title:1,_id:0,favourites:1} );

	db.links.find( {favourites:{$not: {$mod: [5,0] } } } ,{title:1,_id:0,favourites:1} );

	db.users.find( {logins: { $elemMatch: {minutes:20}  }}  );

	db.users.find( {logins: { $elemMatch: {minutes:20}  }},{logins:1,_id:0,'name.first':1}  ).forEach(printjson);

	db.users.find({logins: { $elemMatch : { at: {$lt: new Date(2010,03,30) }  } }},{_id:0,'name.first':1,logins:1} ).forEach(printjson);

	db.users.find( {$where: 'this.name.first==="John"'}  );

	db.users.find( {$where: 'this.name.first==="John"',age:30}  );

	db.users.find('this.name.first==="John"'); //Ans is not coming

//using JS function--No working
	var f =function (){return this.name.first="John"}
	db.users.find(f);
	db.users.find({ $where : f} )


















