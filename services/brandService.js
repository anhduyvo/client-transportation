const dbContext = require('../lib/dbContext');

const Factory = function(){	
}

Factory.getList = async function (query) {
	try
	{
        let PageCurrent = parseInt(query.PageCurrent) - 1;
        let PageSize = parseInt(query.PageSize);
		let PageOffset = PageCurrent * PageSize;

		// get hits total
        let sqlTotal = `
			SELECT COUNT(*) AS Total
			FROM Brand
			WHERE Deleted <> 1
		`;
		let totalRows = (await dbContext.queryItem(sqlTotal)).Total;

		// get data
		let sqlQuery = `
			SELECT BrandId, BrandKey, BrandName, Description
			FROM Brand
			WHERE Deleted <> 1
			ORDER BY BrandId ASC
			OFFSET (@PageOffset) ROWS
            FETCH NEXT @PageSize ROWS ONLY
		`;
		let data = await dbContext.queryList(sqlQuery, {
			PageOffset: PageOffset,
            PageSize: PageSize
		});

		let result = {
            HitsTotal: parseInt(totalRows),
            PageTotal: parseInt(Math.ceil(totalRows / PageSize)),
            PageSize: parseInt(PageSize),
            PageCurrent: parseInt(PageCurrent) + 1,
            PageData: data
        }
        return result;
	}
	catch(err){
		throw err;
	}
}

// get top 5 brands: 12,14,15,28,29,30
Factory.getTopBrands = async function () {
	try
	{
		// top 5 brands
		let sqlQuery = `
			SELECT BrandId, BrandKey, BrandName, Description
			FROM Brand
			WHERE Deleted <> 1 AND BrandId IN (12,14,15,28,29,30)
			ORDER BY BrandId ASC
		`;
		return dbContext.queryList(sqlQuery);
	}
	catch(err){
		throw err;
	}
}

Factory.getBrandById = function (query) {
	let sql = `
		SELECT BrandId, BrandKey, BrandName, Description
		FROM Brand 
		WHERE BrandId=:BrandId AND Deleted <> 1		
	`;
	return dbContext.queryItem(sql, { BrandId: query.BrandId });
}

Factory.getBrandByKey = function (query) {
	let sql = `
		SELECT BrandId, BrandKey, BrandName, Description
		FROM Brand 
		WHERE BrandKey=:BrandKey AND Deleted <> 1		
	`;
	return dbContext.queryItem(sql, { BrandKey: query.BrandKey });
}

Factory.create = function (brand) {
	let sql = `
		INSERT INTO Brand(BrandKey, BrandName, Description)
		VALUES(uuid(), :BrandName, :Description)		
	`;
	return dbContext.queryExecute(sql, brand);
}

Factory.update = function (brand) {
	let sql = `
		UPDATE Brand
		SET BrandName=:BrandName,
			Description=:Description		
		WHERE BrandId=:BrandId
	`;
	return dbContext.queryExecute(sql, brand);
}

Factory.delete = async function (brandId) {
	let tr;
	try 
	{
		tr = await dbContext.getTransaction();
		await tr.begin();

		let sql1 = `UPDATE Brand SET Deleted = 1 WHERE BrandId = '${brandId}'`;
		let res1 = await dbContext.queryTransaction(tr, sql1);

		let sql2 = `UPDATE Product SET Deleted = 1 WHERE BrandId = '${brandId}'`;
		let res2 = await dbContext.queryTransaction(tr, sql2);

		await tr.commit();
		return { res1, res2 };
	} catch (err) {
		if(tr) tr.rollback();
		throw err;
	}
}

module.exports = Factory;