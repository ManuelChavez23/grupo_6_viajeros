const express = require('express');

const router = express.Router();

const userController = require('../controllers/userController');

const path = require('path');

const multer = require('multer');

const { check } = require('express-validator');

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, './public/imgUsers'); 
    },
    filename: (req, file, cb) => {
        let fileName = `${Date.now()}_img${path.extname(file.originalname)}`;
        cb(null, fileName);
    }
})

const uploadFile = multer({storage});

const validations = [
    check('nombre')
        .notEmpty().withMessage('Debes ingresar un nombre'),
    check('apellido')
        .notEmpty().withMessage('Debes ingresar un apellido'),
    check('fechaNacimiento')
        .notEmpty().withMessage('Debes ingresar una fecha'),
    check('email')
        .notEmpty().withMessage('Debes ingresar un correo electrónico').bail()
        .isEmail().withMessage('Debes ingresar un correo electrónico válido'),
    /* check('re-email').notEmpty().withMessage('Debes ingresar nuevamente el correo'), */
    check('password')
        .notEmpty().withMessage('Debes ingresar una contraseña').bail()
        .isLength({min:5, max:8}),
    /* check('re-password').notEmpty().withMessage('Debes ingresar nuevamente la contraseña'), */
    check('tel')
        .notEmpty().withMessage('Debes ingresar un número telefónico'),
]

router.get('/login', userController.login);
router.post('/login', (req,res) => { res.sendFile('fui por post')});

router.get('/register', userController.register);
router.post('/register', uploadFile.single('imgUser'), validations,userController.processRegister);

module.exports = router;