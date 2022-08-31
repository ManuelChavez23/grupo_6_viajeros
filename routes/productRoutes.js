const express = require('express');

const router = express.Router();

const productController = require('../controllers/productController'); 



router.get('/detalle', productController.detail);

module.exports = router;