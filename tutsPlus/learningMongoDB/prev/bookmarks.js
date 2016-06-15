
db.users.drop()
db.links.drop()

db.users.insert({
	name : {first:"John",last:"Doe"},
	age: 30,
	email: 'johndoe@gmail.com',
	passwordHash: 'some_password_hash',
	logins: [
		{at : new Date(2012, 3, 4 ,5 ,6 ,7),minutes:20},
		{at : new Date(2012, 3, 15 ,16 ,17 ,18),minutes:18},
		{at : new Date(2012, 4, 1 ,2 ,3 ,4),minutes:34}
	]
});

db.users.insert({
	name : {first:"Jane",last:"Wilson"},
	age: 25,
	email: 'janewilson@gmail.com',
	passwordHash: 'another_password_hash',
	logins: [
		{at : new Date(2012, 5, 6 ,7 ,8 ,9),minutes:21},
		{at : new Date(2012, 5, 16 ,17 ,18 ,19),minutes:50}
	]
});

db.users.insert({
	name : {first:"Bob",last:"Smith"},
	age: 31,
	email: 'bob.smith@gmail.com',
	passwordHash: 'last_password_hash',
	logins: [
		{at : new Date(2012, 2, 3 ,4 ,5,6),minutes:20},
		{at : new Date(2012, 3, 3 ,4 ,5 ,6),minutes:20}
	]
});




var u1 = db.users.findOne({'name.first' : 'John'});
var u2 = db.users.findOne({'name.first' : 'Jane'});	
var u3 = db.users.findOne({'name.first' : 'Bob'});





db.links.insert({
	title : "Nettuts+",
	url: 'http://net.tutsplus.com',
	comment : 'Great site for web dev tutorials',
	tags: ['tutorials','dev','code'],
	favourites: 100,
	userId : u1._id
	});


db.links.insert({
	title: 'Psdtuts+',
	url: 'http://psd.tutsplus.com',
	comment: 'Photoshop tutorials like none other',
	tags: ['Photoshop','tutorials'],
	favourites : 507,
	userId: u2._id
	});


db.links.insert({
	title: 'Tuts+ Premium',
	url : 'http://tutsplus.com',
	comment: 'Very Nice',
	tags: ['hadoop','hbase','pig','hive','avro','cassandra','mahout'],
	favourites: 149,
	userId: u1._id
	});

db.links.insert({
	title: 'Envato',
	url:'http://envato.com',
	comment: 'Greatest company in Australia',
	tags: ['business','australia'],
	favourites: 279,
	userId: u2._id
	});

db.links.insert({
	title: 'MongoDb.org',
	url:'http://mongodb.org',
	comment: 'Really cool NoSQL database',
	tags: ['database', 'developement'],
	favourites: 79,
	userId: u3._id
	});

db.links.insert({
	title: 'Audible Audio Books',
	url: 'http://www.audible.com',
	comment: 'Good audio books',
	tags: ['books','audio'],
	favourites : 100,
	userId: u2._id
	});


db.links.insert({
	title: 'Wikipeida',
	url : 'http://wikipedia.org',
	comment: 'The soure of all knowledge',
	tags: ['information','encyclopedia','online','wikis'],
	favourites: 187,
	userId: u3._id
	});

db.links.insert({
	title: 'Mobiletuts+',
	url: 'http://mobile.tutsplus.com',
	comment: 'Great tutorials for developing on mobile devices',
	tags: ['mobile','development'],
	favourites: 84,
	userId: u2._id
	})

db.links.insert({
	title: 'Amazon.com',
	url: 'http://www.amazon.com',
	comment: 'Where to buy things',
	tags: ['selling','buying'],
	favourites: 329,
	userId: u1._id
	});	

db.links.insert(  {
	title:'ThemeForest',
	url:'http://themforest.com',
	comment:'Where to buy the best website themes',
	tags:['marketplace','themes'],
	favourites:654,
	userId:u1._id
} );

db.links.insert(  {
	title:'CodeCanyon',
	url:'http://codecanyon.net',
	comment:'A marketplace for code',
	tags:	['marketplace','code'],
	favourites:217,
	userId:u2._id
} );

db.links.insert(  {
	title:'GraphicRiver',
	url:'http://graphriviera.com',
	comment:'Apache Accumulo',
	tags:	['marketplace','graphics'],
	favourites:543,
	userId:u1._id
} );


