'use strict';

module.exports = {
  db: {
    uri: process.env.MONGODB_URI,
    options: {
      user: '',
      pass: ''
    }
  },
  domain: 'laptrinh365.com',
  sessionSecret: 'i_love_java_script',
  facebook: {
    clientID: process.env.FACEBOOK_ID || 'APP_ID',
    clientSecret: process.env.FACEBOOK_SECRET || 'APP_SECRET',
    callbackURL: '/api/auth/facebook/callback'
  }
};
