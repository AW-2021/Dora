const express = require('express');
const exphbs = require('express-handlebars');
const bodyParser = require('body-parser');
const mysql = require('mysql');

require('dotenv').config();

const app = express();
const port = process.env.PORT || 8080;

//Parsing middleware
//Parse application/x-www--form-urlencoded
app.use(express.urlencoded({extended: true})); // New

// Parse application/json
// app.use(bodyParser.json());
app.use(express.json()); // News

//Static Files
//public is the name of the static folder
app.use(express.static('public'));

//Templating Engine
//app.engine('hbs', exphbs.engine( {defaultLayout: 'main', extname: '.hbs'})); //Changing the file extension from handlebars to hbs
//app.set('view engine', 'hbs');

// Update to 6.0.X
const handlebars = exphbs.create({ extname: '.hbs',});
app.engine('.hbs', handlebars.engine);
app.set('view engine', '.hbs');

const routes = require('./server/routes/user');
app.use('/', routes);

app.listen(port, ()=> console.log(`Listening on port ${port}`));