const express = require('express');

const router = express.Router();

const adminController = require('../controllers/adminController'); 

const multer = require('multer');

const path = require('path')

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, path.join(__dirname,'../public/img'));
    },
    filename: (req, file, cb) => {
        cb(null, `${Date.now()}_img_${path.extname(file.originalname)}`);
    }
})

const uploadFile = multer({storage})

router.get('/adminList', adminController.adminList);
router.get('/create', adminController.add);
router.post('/create', uploadFile.single('img') ,adminController.create);
router.get('/comentarios', adminController.comments);
router.get('/edit', adminController.productEdit);
module.exports = router;