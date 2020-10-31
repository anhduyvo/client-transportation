const router = require('express').Router();
const cors = require('cors')
const jwt = require('jsonwebtoken');
const passport = require('passport');
const dbContext =require('../lib/dbContext');
const auth = require('./auth');
const config = require('../config');
const info = require('../package.json');
const { uploadProductImageFs } = require('../lib/uploadFile');
const baseService = require('../services/baseService');

// routes for testing
router.get('/status', function (req, res, next) {
    res.json({
		status: true, 
		message: 'request GET is success',
		version: info.version,
		web_info: process.env.WEB_INFO
	});
    next();
});

router.post('/status', function (req, res, next) {
    res.json({
		status: true,
		message: 'request POST is success', 
		body: req.body,
		version: info.version
	});
    next();
});

router.get('/connection', async function (req, res, next) {
	try {
		let status = await dbContext.connect();		
		return res.json({ status: status, message: 'SQL DB is connected'});
	} catch(err) {
		next({ code: 404, message: 'Can NOT connect to SQL DB'});
	}	
});

router.get('/transaction', async function (req, res, next) {
	let tr;
	try 
	{
		tr = await dbContext.getTransaction();
		await tr.begin();

		let data1 = await baseService.addUser(tr);
		let data2 = await baseService.editUser(tr, 'VO DUY ANH', 'anhvd@csc.com');		
		let data3 = await baseService.getUserList(tr);

		await tr.commit();
		return res.json({ status: true, data: data3 });
	} catch(err) {
		if(tr) await tr.rollback();
		next(err);
	}	
});

router.get('/newsfeed', cors(), function (req, res, next){
	res.status(200).json({ status: true, message: 'request newsfeed with CORS is success.' });
	next();
});


// routers: use to login/logout by DB
router.post('/authenticate', function (req, res, next) {
	return passport.authenticate('local', async function (err, result) {
		try
		{
			if (err) throw err;
			
			if (!result.success) {
				return res.status(404).json({
					success: false,
					message: { code: 'ERROR_UNAUTHENTICATION', message: 'Username and Password is invalid.' }
				});
			} 
			else {
				var token = jwt.sign(result.user, config.secretKey, { expiresIn: 60 * 60 * 24 * 1 });
				return res.status(200).json({
					success: true,
					message: { code: 'SUCCESS_AUTHENTICATION', message: 'Login is successful.' },
					user: { username: result.user.username, userkey: result.user.userkey, token: token },
				});
			}
		}
		catch(err){
			next(err);
		}
	})(req, res, next);
});

router.post('/upload', auth.checkAuthentication(), uploadProductImageFs, async function(req, res, next){
	try
	{
		// req.file is the `ProductImage` file
		let fileName = req.file.filename;
		// req.body will hold the text fields, if there were any
		let product = req.body;
		product.ProductId = parseInt(product.ProductId);
		product.ProductImage = fileName;
		
		if(product){
			res.status(200).json({ success: true, data: product });
		}
		else{
			res.status(500).json({ success: false });
		}
	}
	catch(err){
		next(err);
	}
});

module.exports = router;