const express = require('express');

const router = express.Router();

const adminController = require('../controllers/adminController'); 



router.get('/adminList', adminController.adminList);
router.get('/agregar', adminController.add);
router.get('/comentarios', adminController.comments);
router.get('/editar', adminController.productEdit);
module.exports = router;