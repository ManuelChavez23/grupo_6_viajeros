const express = require('express');

const router = express.Router();

const productController = require('../controllers/productController'); 




router.get('/detail', productController.detail);
router.get('/listado', productController.listado);
router.get('/agregar', productController.agregar);
router.get('/comentarios', productController.comentarios);
module.exports = router;