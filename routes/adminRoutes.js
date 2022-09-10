const express = require('express');

const router = express.Router();

const adminController = require('../controllers/adminController'); 



router.get('/adminList', adminController.adminList);
router.get('/create', adminController.add);
router.get('/comentarios', adminController.comments);
router.get('/edit', adminController.productEdit);
module.exports = router;