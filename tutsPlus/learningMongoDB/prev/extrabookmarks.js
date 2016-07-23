db.users.insert({
	name : {first:"Gale",last:"Grasim"},
	age: 31,
	email: 'gale.grasim@gmail.com',
	passwordHash: 'continue_password_hash',
	logins: [
		{at : new Date(2013, 2, 3 ,4 ,5,6),minutes:20},
		{at : new Date(2013, 3, 3 ,4 ,5 ,6),minutes:20}
	]
});

db.users.insert({
	name : {first:"Shampain",last:"Andrew"},
	age: 31,
	email: 'shampain.andrew@gmail.com',
	passwordHash: 'lootera_password_hash',
	logins: [
		{at : new Date(2010, 2, 3 ,4 ,5,6),minutes:20},
		{at : new Date(2011, 3, 3 ,4 ,5 ,6),minutes:20}
	]
});

db.users.insert({
	name : {first:"Branden",last:"Kaveratum"},
	age: 31,
	email: 'branden.kaveratum@gmail.com',
	passwordHash: 'ultimate_password_hash',
	logins: [
		{at : new Date(2003, 2, 3 ,4 ,5,6),minutes:20},
		{at : new Date(2005, 3, 3 ,4 ,5 ,6),minutes:20}
	]
});


var u4 = db.users.findOne({'name.first' : 'Gale'});
var u5 = db.users.findOne({'name.first' : 'Shampain'});
var u6 = db.users.findOne({'name.first' : 'Branden'});


db.links.insert({
	title: 'Apache Software Foundation',
	url : 'http://apache.org',
	comment: 'Apache Bap hai !!!',
	tags: ['whirr','flume','tika','Giraffe','Cordova','ManiFoldCF','Lucene'],
	favourites: 1000,
	userId: u3._id
	});


