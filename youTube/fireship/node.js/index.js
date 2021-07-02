// initialize npm project, y for default options
// npm init -y // created package.json
// npm install express

// ----------------------------------------------------------------------

const { request } = require('express');
const express = require('express');
const fileSystem = require('fs');

const app = express();
app.get('/', (request, response)=>{
    fileSystem.readFile('home.html', 'utf-8', (error, html) => {
        if(error){
            response.status(500).send('Sorry, out of order.');
        }
        response.send(html);
    });
});

app.listen(process.env.PORT || 3000 , () => {
    console.log('App available on http://localhost:3000');
});