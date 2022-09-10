const express = require('express');

const router = express.Router();

const productController = require('../controllers/productController'); 


router.get("/products", productController.products)
router.get('/detalle/:id', productController.detail);

module.exports = router;