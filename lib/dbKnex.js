const config = require('../config');
const dbQueryBuilder = require('knex')(config.db_eshop);

module.exports = dbQueryBuilder;