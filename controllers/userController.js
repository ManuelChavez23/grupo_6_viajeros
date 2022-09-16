const fs = require('fs');
const path = require('path');
const {validationResult} = require('express-validator');

const usersJson = fs.readFileSync(path.join(__dirname, '../data/usersBd.json'), 'utf-8');

const users = JSON.parse(usersJson);


const userController = {
    login: (req, res) =>{
        res.render('login')
    },
    register: (req, res) =>{
        res.render('register');
    },
    processRegister: (req, res) => {
        const resultValidation = validationResult(req);
        
        if(resultValidation.errors.length > 0 ) {
            return res.render('register', {
                errors: resultValidation.mapped(),
                oldData: req.body
            });
        }
    }
}

module.exports = userController;