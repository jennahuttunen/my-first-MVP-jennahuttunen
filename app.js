var express = require('express');
var path = require('path');
var cookieParser = require('cookie-parser');
var logger = require('morgan');
const cors = require('cors');

var showsRouter = require('./routes/shows');
var productsRouter = require('./routes/products');

// import the database somewhere?

var app = express();

app.use(cors());
app.use(logger('dev'));
app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use(cookieParser());
// app.use(express.static(path.join(__dirname, 'public')));

app.use('/api/shows', showsRouter);
app.use('/api/products', productsRouter);

// Get home page
app.get('/', function (req, res) {
    res.send({ message: 'Welcome to the homepage' });
  });

module.exports = app;

