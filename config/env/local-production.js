'use strict';

module.exports = {
  db: {
    uri: 'mongodb://aznodebb:eXSCCELzl5yV3LC3cICoBXLD5JHzmJm3vNfxKDiwf9Sl7ZVf9tzSLIkdxBZGz98AyxwtqSE07Dmf3vna0GfrVQ==@aznodebb.documents.azure.com:10255/?ssl=true&replicaSet=globaldb',
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
