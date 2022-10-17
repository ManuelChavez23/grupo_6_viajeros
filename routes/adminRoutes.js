const express = require('express');

const router = express.Router();

const adminController = require('../controllers/adminController'); 

const multer = require('multer');

const path = require('path')

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, path.join(__dirname,'../public/imgUsers'));
    },
    filename: (req, file, cb) => {
        const newFilename = 'img-' + Date.now() + path.extname(file.originalname);
        cb(null, newFilename);
    }
})

const uploadFile = multer({storage})

router.get('/adminList', adminController.adminList);
router.get('/create', adminController.add);
router.post('/create', uploadFile.single('img') ,adminController.create);
router.get('/comentarios', adminController.comments);
router.get('/edit/:id', adminController.productEdit);
router.put('/edit/:id/storage', uploadFile.single('img'), adminController.saveEdit);
router.delete('/delete/:id', adminController.delete);
router.get('/userList', adminController.userList);
router.get('/userEdit/:userId', adminController.editUser);
router.put('/userEdit/:userId/storage', uploadFile.single('img'), adminController.saveUserEdit);
router.delete('/userDelete/:userId', adminController.deleteUser);


module.exports = router;