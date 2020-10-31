const dbContext = require('../lib/dbContext');

const Factory = function () {
}

Factory.getUserList = function(tr) {
	let sql = `
		SELECT 	[UserId],[UserKey],[UserType],[UserName],[Hash],[DisplayName],[ImageKey],[Email],[Mobile],
				[Title],[Description],[DateOfBirth],[Created],[Updated],[Author],[Editor],[Deleted]
		FROM [dbo].[User]
		ORDER BY UserId ASC
	`;
	return dbContext.getRequest(tr).query(sql);
}

Factory.addUser = function(tr, userName, hash, displayName, email, dateOfBirth) {
	let sql = `
		INSERT INTO [dbo].[User] (UserKey, UserType, UserName, Hash, DisplayName, Email, DateOfBirth, Author, Editor) 
		VALUES (NEWID(),'USER', 'cashier88', NEWID(),'Cashier01','cashier01@eshop.com','2000-02-02','SYSTEM','SYSTEM');
	`;
	return dbContext.getRequest(tr).query(sql);
}

Factory.editUser = function(tr, displayName, email) {
	let sql = `
		UPDATE [dbo].[User]
		SET DisplayName = N'${displayName}',
			Email = N'${email}'
		WHERE UserId = 1
	`;
	return dbContext.getRequest(tr).query(sql);
}

Factory.getUsers = function(tr) {
	let sql = `
		SELECT 	UserId, UserKey, UserType, UserName, DisplayName, Email, Mobile, Title, Description, DateOfBirth 
		FROM User 
		WHERE Deleted = 0 
		ORDER BY UserId DESC
	`;
	return dbContext.getRequest(tr).query(sql);
}

Factory.getUserById = function (tr, userId) {
	let sql = `
		SELECT 	UserId, UserKey, UserType, UserName, DisplayName, Email, Mobile, Title, Description, DateOfBirth 
		FROM User 
		WHERE UserId = '${userId}'
	`;	
	return dbContext.getRequest(tr).query(sql);
}

module.exports = Factory;