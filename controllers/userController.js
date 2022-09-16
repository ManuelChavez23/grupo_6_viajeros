const fs = require('fs');
const path = require('path');
const {validationResult} = require('express-validator');
const userJson = fs.readFileSync(path.join(__dirname, '../data/usersBd.json'));


let users = JSON.parse(userJson);



const userController = {
    login: (req, res) =>{
        res.render('login')
    },
    register: (req, res) =>{
        res.render('register');
    },
    processRegister: (req, res) => {
        const resultValidation = validationResult(req);
        let newUser = {
            id: users.length + 1,
            firstName: req.body.nombre,
            lastName: req.body.apellido,
            birth: req.body.fechaNacimiento,
            email: req.body.email,
            password: req.body.password,
            phoneNumber: req.body.tel
        }
        
        if(resultValidation.errors.length > 0 ) {
            return res.render('register', {
                errors: resultValidation.mapped(),
                oldData: req.body
            });
        } else {
            users.push(newUser);
            let usersJSON = JSON.stringify(users, null, ' ');
            fs.writeFileSync(path.join(__dirname,'../data/usersBd.json'), usersJSON);
            res.send(users)
        }
    },
    usersCheck: (req, res) => {
        const usersJson = fs.readFileSync(path.join(__dirname, '../data/usersBd.json'), 'utf-8');

        const users = JSON.parse(usersJson);

        let userCheck = {
            user: req.body.user,
            password: req.body.password
        }

        let check = users.find(elemento => elemento.user == userCheck.user);

        if(check) {
            if(userCheck.password == check.password) {
                res.redirect('/');
            } else {
                res.redirect('login');
            }
        } else {
            res.redirect('register');
        }

        
    }
}

module.exports = userController;