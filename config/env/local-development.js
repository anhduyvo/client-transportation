'use strict';

module.exports = {
  db: {
    uri: 'mongodb://localhost/local-dev',
    options: {
      user: '',
      pass: ''
    }
  },
  domain: '',
  sessionSecret: 'youshouldchangethistosomethingsecret',
  facebook: {
    clientID: process.env.FACEBOOK_ID || 'APP_ID',
    clientSecret: process.env.FACEBOOK_SECRET || 'APP_SECRET',
    callbackURL: '/api/auth/facebook/callback'
  }
};
