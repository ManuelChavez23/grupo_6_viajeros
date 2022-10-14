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
            //console.log(users);
            let usuarioALoguearse = {
                user: req.body.user,
                password: req.body.password
            };
                for (let i = 0; i < users.lenght; i++) {
                    
                    if(users[i].user == req.body.user) {
                        if(bcrypt.compareSync(req.body.password, users[i].password)) {
                            usuarioALoguearse = users[i];
                            break;
                        }
                    }
                }
                //console.log(usuarioALoguearse);
                if(resultValidation.errors.length > 0 ) {
                    return res.render('login', {
                        errors: resultValidation.mapped(),
                        oldData: req.body
                    });
                } else {
                    res.redirect('/')
                }

                /* let errors = validationResult(req);

                if(errors.isEmpty()) {
                    const usersJson = fs.readFileSync(path.join(__dirname, '../data/usersBd.json'), 'utf-8');

                    const users = JSON.parse(usersJson);

                    for (let i = 0; i < users.lenght; i++) {
                        if(users[i].user == req.body.user) {
                            if(bcrypt.compareSync(req.body.password, users[i].password)) {
                                usuarioALoguearse = users[i];
                                break;
                            }
                        }
                    }

                    if(usuarioALoguearse == undefined) {
                        return res.render('login', {errors: [
                            {msg: 'Credenciales invalidas'}
                        ]})
                    }

                    req.session.usuariologueado = usuarioALoguearse

                } else {
                    return res.render('login', {errors: errors.errors})
                }
 */


    },
    usersCheck: (req, res) => {

        const resultValidation = validationResult(req);

        const usersJson = fs.readFileSync(path.join(__dirname, '../data/usersBd.json'), 'utf-8');

        const users = JSON.parse(usersJson);

        let userCheck = {
            user: req.body.user,
            password: req.body.password
        }
        
        let check = users.find(elemento => elemento.user == userCheck.user);
        
        if(check) {
            if(bcrypt.compareSync(userCheck.password, check.password)) {
                req.session.usuariologueado = check;
                
                if(req.body.remember) {
                    res.cookie('user', req.body.user, {max: (1000 * 60) * 2 })
                }

                return res.redirect('/perfil');

                
            } else {
                res.render('login', {
                    errors: {password:
                        { msg: 'Crendeciales invalidas' }
                    }, //resultValidation.mapped(),
                    oldData: req.body
                });
            }
        } else {
            res.render('login', {
                errors: resultValidation.mapped(),
                oldData: req.body
            });
        }
    },

    perfil: (req, res) => {
        res.render('perfil', {
            user: req.session.usuariologueado
        });
    },

    logout: (req, res) => {
        res.clearCookie('user')
        req.session.destroy();
        /* console.log(req.session); */
        res.redirect('/')
    }
}

module.exports = userController;