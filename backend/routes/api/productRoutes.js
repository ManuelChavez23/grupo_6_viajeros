const express = require('express');
const productController = require('../../controllers/api/productController');
const router = express.Router();

router.get('/products', productController.destiny);
router.get('/products/:id', productController.destinyId);
/*router.get('/products/category', productController.category)*/
/*router.get('/search', productController.search)*/

module.exports = router;