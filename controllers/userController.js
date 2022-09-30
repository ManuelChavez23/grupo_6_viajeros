const fs = require('fs');
const path = require('path');
const {validationResult} = require('express-validator');
const userJson = fs.readFileSync(path.join(__dirname, '../data/usersBd.json'));
const bcrypt = require('bcryptjs');
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
            password: bcrypt.hashSync(req.body.password, 10),
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
            res.redirect('login')
        }
    },
    processLogin: (req, res) => {
        const resultValidation = validationResult(req);

            let usuarioALoguearse;
            console.log(req.body.user);
                for (let i = 0; i < users.lenght; i++) {
                    if(users[i].user == req.body.user) {
                        if(bcrypt.compareSync(req.body.password, users[i].password)) {
                            usuarioALoguearse = users[i];
                            break;
                            }
                        }
                }
        
                if(resultValidation.errors.length > 0 ) {
                    return res.render('login', {
                        errors: resultValidation.mapped(),
                        oldData: req.body
                    });
                } else {
                    res.redirect('/')
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
            if(bcrypt.compareSync(userCheck.password, check.password)) {
                res.redirect('/');
            } else {
                res.redirect('login');
            }
        } 

        
    }
}

module.exports = userController;