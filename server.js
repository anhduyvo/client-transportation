const express = require('express');
const http = require('http');
const path = require("path");

const server = express();
server.set('port', process.env.PORT || 3000);

/**
 * register site collections
 */
const webpath = path.join(__dirname, 'public'); 
server.use('/', express.static(webpath, { index: 'default.html' }));
server.use('/about-us', express.static(webpath , { index: 'about-us.html' }));
server.use('/contact-us', express.static(webpath, { index: 'contact-us.html' }));
server.use('/service-us', express.static(webpath, { index: 'service-us.html' }));
server.use('/login', express.static(webpath, { index: 'login.html' }));

module.exports = server;