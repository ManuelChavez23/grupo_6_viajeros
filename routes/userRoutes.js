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

const validationsRegister = [
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

const validationsLogin = [
    check('user')
        .notEmpty().withMessage('El nombre de usuario es incorrecto').bail(),
    check('password')
        .notEmpty().withMessage('Debes ingresar una contraseña')
]

router.get('/login', userController.login);
router.post('/login', validationsLogin, userController.processLogin);

router.get('/register', userController.register);
router.post('/register', uploadFile.single('imgUser'), validationsRegister,userController.processRegister);

module.exports = router;