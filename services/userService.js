const common = require('../lib/common');
const CONSTANTS = require('../lib/constants');
const dbContext = require('../lib/dbContext');

const Factory = function () {
}

Factory.getUserByKey = function (query) {
	let sql = `
		SELECT 	UserId, UserKey, UserType, UserName, DisplayName, Email, Mobile, Title, Description, DateOfBirth 
		FROM User 
		WHERE UserKey =:UserKey
	`;
	return dbContext.queryItem(sql, { UserKey: query.UserKey });
}

Factory.getUserByName = function (query) {
	let	sql = `
		SELECT UserId, UserKey, UserType, UserName, DisplayName, Email, Mobile, Title, Description, DateOfBirth 
		FROM User 
		WHERE UserName =:UserName
	`;
	return dbContext.queryItem(sql, { UserName: query.UserName });
}

Factory.getUserByEmail = function (email) {
	let sql = `
		SELECT UserId, UserKey, UserType, UserName, DisplayName, Email, Mobile, Title, Description, DateOfBirth
		FROM User 
		WHERE Email =:Email
	`;
	return dbContext.queryItem(sql, { Email: email });	
}


Factory.authenticate = async function (username, password) {
	try
	{
		if(!username)
			throw { code: 'ERROR_UNAUTHENTICATION', message: 'Username is required.' };

		if(!password)
			throw { code: 'ERROR_UNAUTHENTICATION', message: 'Password is required.' };

		let sqlUser = 'SELECT UserKey, UserName, Hash FROM User WHERE UserName=:UserName LIMIT 1';
		let user = await dbContext.queryItem(sqlUser, { UserName: username});
		if(!user)
			throw { code: 'ERROR_UNAUTHENTICATION', message: 'Username is invalid.' };

		if(common.encoded(password) !== user.Hash)
			throw { code: 'ERROR_UNAUTHENTICATION', message: 'Password is invalid.' };
		
		if(username !== user.UserName && password !== user.Hash) {
			return { success: false };
		}
		else {
			return { success: true, username: user.UserName, userkey: user.UserKey };
		}
	}
	catch(err){
		throw err;
	}
}

Factory.changePassword = async function (userId, hash) {
	let tr;
	try
	{
		tr = await dbContext.getTransaction();
		await tr.begin();
		
		let sql = 'UPDATE User SET Hash = @Hash WHERE UserId = @UserId';
		let res = await dbContext.queryExecute(tr, sql,{ UserId: userId, Hash: hash });
		
		await tr.commit();
		return res
	}
	catch(err) {
		if(tr) tr.rollback();
		throw err;
	}
}

Factory.create = async function (user) {
	try
	{
		user.Hash = common.encoded(user.UserName);
		user.UserType = CONSTANTS.USERTYPES.USER;
		var sql = `
			INSERT INTO User(UserKey,UserType,UserName,Hash,DisplayName,Email,Mobile,Title,Description)
			VALUES(uuid(),:UserType,:UserName,:Hash,:DisplayName,:Email,:Mobile,:Title,:Description)
		`;
		return dbContext.queryExecute(sql, user);
	}
	catch(err){
		throw err;
	}	
}

Factory.update = async function (user) {
	try
	{
		var sql = `
			UPDATE User
			SET UserName=:UserName,
				DisplayName=:DisplayName,
				Email=:Email,
				Mobile=:Mobile,
				Title=:Title,
				DateOfBirth=:DateOfBirth,
				Description=:Description
			WHERE UserId=:UserId
		`;
		return dbContext.queryExecute(sql, user);
	}
	catch(err){
		throw err;
	}
}

Factory.delete = async function (userId) {	
	var sql = `UPDATE User SET Deleted=1 WHERE UserId=:UserId`;
	return dbContext.queryExecute(sql, {UserId: userId});
}

module.exports = Factory;
