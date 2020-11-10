'use strict';

module.exports = {
  db: {
    uri: process.env.MONGODB_URI || 'mongodb://localhost/local-dev',
    options: {
      user: '',
      pass: ''
    }
  },
  domain: process.env.DOMAIN || 'localhost',
  sessionSecret: process.env.MONGODB_URI || 'i_love_java_scripts',
  facebook: {
    clientID: process.env.FACEBOOK_ID || 'APP_ID',
    clientSecret: process.env.FACEBOOK_SECRET || 'APP_SECRET',
    callbackURL: '/api/auth/facebook/callback'
  }
};
