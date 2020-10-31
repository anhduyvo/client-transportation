'use strict';
const multer = require('multer');

/* upload file to File System */
const multerConfig = {
	dest: './uploads/sample',
	limits: { fileSize: 1048576 }
};
const uploadProductImageFs = multer(multerConfig).single('ProductImage');

module.exports = {
  uploadProductImageFs: uploadProductImageFs
};