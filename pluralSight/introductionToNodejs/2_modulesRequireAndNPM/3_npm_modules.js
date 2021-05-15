var request = require('request');


request('https://www.pluralsight.com/', function (error, response, body) {
    if (!error && response.statusCode === 200) {
        console.log(body);
        //console.dir(response);
    }
});