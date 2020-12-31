'use strict';

/**
 * Module dependencies
 */
var path = require('path'),
  mongoose = require('mongoose'),
  multer = require('multer'),
  config = require(path.resolve('./config/config')),
  Product = mongoose.model('Product'),
  errorHandler = require(path.resolve('./modules/core/server/controllers/errors.server.controller'));

/**
 * Create an Product
 */
exports.create = function (req, res) {
  var product = new Product(req.body);
  product.user = req.user;

  product.save(function (err) {
    if (err) {
      return res.status(422).send({
        message: errorHandler.getErrorMessage(err)
      });
    } else {
      res.json(product);
    }
  });
};

/**
 * Show the current product
 */
exports.read = function (req, res) {
  // convert mongoose document to JSON
  var product = req.product ? req.product.toJSON() : {};

  // Add a custom field to the product, for determining if the current User is the "owner".
  // NOTE: This field is NOT persisted to the database, since it doesn't exist in the product model.
  product.isCurrentUserOwner = !!(req.user && product.user && product.user._id.toString() === req.user._id.toString());
  res.json(product);
};

/**
 * Update an product
 */
exports.update = function (req, res) {
  var product = req.product;

  product.title = req.body.title;
  product.content = req.body.content;
  product.image_url = req.body.image_url;

  product.save(function (err) {
    if (err) {
      return res.status(422).send({
        message: errorHandler.getErrorMessage(err)
      });
    } else {
      res.json(product);
    }
  });
};

/**
 * Delete an product
 */
exports.delete = function (req, res) {
  var product = req.product;
  product.remove(function (err) {
    if (err) {
      return res.status(422).send({
        message: errorHandler.getErrorMessage(err)
      });
    } else {
      res.json(product);
    }
  });
};

/**
 * List of Products
 */
exports.list = function (req, res) {
  Product.find().sort('-created').populate('user', 'displayName').exec(function (err, products) {
    if (err) {
      return res.status(422).send({
        message: errorHandler.getErrorMessage(err)
      });
    } else {
      res.json(products);
    }
  });
};

/**
 * Product middleware
 */
exports.productByID = function (req, res, next, id) {
  if (!mongoose.Types.ObjectId.isValid(id)) {
    return res.status(400).send({
      message: 'product is invalid'
    });
  }

  Product.findById(id).populate('user', 'displayName').exec(function (err, product) {
    if (err) {
      return next(err);
    } else if (!product) {
      return res.status(404).send({
        message: 'No product with that identifier has been found'
      });
    }
    req.product = product;
    next();
  });
};

/**
 * Update product image
 */
exports.changeProductImage = function (req, res) {
  var user = req.user;  
  
  // Filtering to upload only images
  var multerConfig = config.uploads.product.image;
  multerConfig.fileFilter = require(path.resolve('./config/lib/multer')).imageFileFilter;
  var upload = multer(multerConfig).single('newProductImage');

  if (user) {
    uploadImage()
      .then(function () {
        var image_url = '/' + config.uploads.product.image.dest + req.file.filename;
        res.json({
          user: user,
          image_url: image_url
        });
      })
      .catch(function (err) {
        res.status(422).send(err);
      });
  } else {
    res.status(401).send({
      message: 'User is not signed in'
    });
  }

  function uploadImage () {
    return new Promise(function (resolve, reject) {
      upload(req, res, function (err) {
        if (err)  reject(errorHandler.getErrorMessage(err));
        else resolve();
      });
    });
  }  

};
