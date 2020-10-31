require('dotenv').config();
var express = require('express');
var expressSession = require('express-session');
var path = require("path");
var bodyParser = require('body-parser');
var cookieParser = require('cookie-parser');
var methodOverride = require('method-override');
var auth = require('./routes/auth');
var config = require('./config');
var common = require('./lib/common');

// Express
var server = express();
server.use(cookieParser()); // read cookies (for auth)
server.use(methodOverride());
server.use(bodyParser.urlencoded({ extended: true }));
server.use(bodyParser.json());
server.use(expressSession({ secret: config.secretKey, resave: true, saveUninitialized: false }));

// setup Server
auth.setup(server);
server.set('port', process.env.PORT || 3000);
server.set('secretKey', config.secretKey);

// Register APIs
server.use('/api', require('./routes/api'));
server.use('/api/brand', require('./routes/brand'));
server.use('/api/category', require('./routes/category'));
server.use('/api/product', require('./routes/product'));
server.use('/api/customer', require('./routes/customer'));
server.use('/api/user', require('./routes/user'));
server.use('/api/review', require('./routes/review'));

var pathUploads = path.join(__dirname, 'uploads');
server.use('/uploads', express.static(pathUploads));

/**
 * Error Handling: middleware to handle error
 */
server.use(function (err, req, res, next) {
	res.status(500);
	res.json(common.errorHandler(err));
});


/**
 *   register eshop:
 * - client site: angular js & multiple pages
 * - admin site : angular js & single page
 */
var pathPublic = path.join(__dirname, './client/src/');
server.use('/', express.static(pathPublic, { index: 'index.html' }));
server.use('/index', express.static(pathPublic, { index: 'index.html' }));
server.use('/product', express.static(pathPublic, { index: 'thestore.html' }));
server.use('/product/:productKey', express.static(pathPublic, { index: 'productdetail.html' }));
server.use('/search', express.static(pathPublic, { index: 'search.html' }));
server.use('/contact', express.static(pathPublic, { index: 'contact.html' }));

/*
var pathProfile = path.join(__dirname, './profile/');
server.use('/', express.static(pathProfile, { index: 'index.html' }));
*/

var pathAdmin = path.join(__dirname, './admin/src/');
server.use('/admin', express.static(pathAdmin, { index: 'index.html' }));
server.use('/app', express.static(path.join(pathAdmin, 'app')));
server.use('/img', express.static(path.join(pathAdmin, 'img')));
server.use('/libs', express.static(path.join(pathAdmin, 'libs')));

module.exports = server;