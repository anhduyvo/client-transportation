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
  sessionSecret: process.env.SESSION_SECRET || 'i_love_money',
  facebook: {
    clientID: process.env.FACEBOOK_ID || 'APP_ID',
    clientSecret: process.env.FACEBOOK_SECRET || 'APP_SECRET',
    callbackURL: '/api/auth/facebook/callback'
  }
};
