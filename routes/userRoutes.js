const express = require('express');

const router = express.Router();

const userController = require('../controllers/userController');


router.get('/login', userController.login);
router.post('/login', (req,res) => { res.sendFile('fui por post')});

router.get('/register', userController.register);


module.exports = router;