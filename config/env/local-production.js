'use strict';

module.exports = {
  db: {
    uri: process.env.MONGODB_URI,
    options: {
      user: '',
      pass: ''
    }
  },
  domain: process.env.DOMAIN,
  sessionSecret: process.env.SESSION_SECRET,
  facebook: {
    clientID: process.env.FACEBOOK_ID || 'APP_ID',
    clientSecret: process.env.FACEBOOK_SECRET || 'APP_SECRET',
    callbackURL: '/api/auth/facebook/callback'
  }
};
