const express = require('express');

const router = express.Router();

const userController = require('../controllers/userController');

const path = require('path');

const multer = require('multer');

const { check } = require('express-validator');

const authMiddleware = require('../middlewares/authMiddleware');
const guestMiddleware = require('../middlewares/guestMiddleware');
const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, './public/img'); 
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
    check('user')
        .notEmpty().withMessage('Debes ingresar un usuario'),
    check('fechaNacimiento')
        .notEmpty().withMessage('Debes ingresar una fecha'),
    check('email')
        .notEmpty().withMessage('Debes ingresar un correo electrónico').bail()
        .isEmail().withMessage('Debes ingresar un correo electrónico válido'),
        /* .custom((value, { req }) => {
            
            return User.findOne({ email: value }).then(userDoc => {
              if (userDoc) {
                return Promise.reject('E-Mail address already exists!');
              }
            });
          }), */
    /* check('re-email').notEmpty().withMessage('Debes ingresar nuevamente el correo'), */
    check('password')
        .notEmpty().withMessage('Debes ingresar una contraseña').bail()
        .isLength({min:8, max:20}).withMessage('La contraseña debe contener al menos 8 caracteres'),
    /* check('re-password').notEmpty().withMessage('Debes ingresar nuevamente la contraseña'), */
    check('tel')
        .notEmpty().withMessage('Debes ingresar un número telefónico'),
]

const validationsLogin = [
    check('user')
        .notEmpty().withMessage('El campo es obligatorio').bail()
        .withMessage('El nombre de usuario es incorrecto'), 
    check('password')
        .notEmpty().withMessage('Debes ingresar una contraseña')
]

router.get('/login', guestMiddleware, userController.login);
router.post('/login', validationsLogin, userController.usersCheck);

router.get('/register', guestMiddleware, userController.register);
router.post('/register', uploadFile.single('img'), validationsRegister,userController.processRegister);

router.get('/perfil', authMiddleware, userController.perfil);
router.get('/logout', authMiddleware, userController.logout)

router.get('/perfilEdit/:userId', authMiddleware, userController.perfilEdit)
router.put('/perfilEdit/:userId/storage', uploadFile.single('img'), userController.savePerfilEdit);

module.exports = router;