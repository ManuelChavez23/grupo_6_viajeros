/* const path = require('path');
const fs = require('fs');
const userJson = fs.readFileSync(path.join(__dirname, '../data/usersBd.json'));
let users = JSON.parse(userJson); */

const db = require('../database/models');
const sequelize = db.sequelize;

function userLoggedMiddleware(req, res, next) {
    res.locals.isLogged = false;
    /*  res.locals.isAdmin = false;  */
    /* 
        console.log(req.cookies) */
    let userInCookie = req.cookies.user;
    /*  let userFromCookie=users.find(elemento=>elemento.user==userInCookie);
     if (userFromCookie) {
         req.session.usuariologueado = userInCookie
     }
     if (req.session && req.session.usuariologueado) {
         res.locals.isLogged = true;
         res.locals.usuariologueado = req.session.usuariologueado;
     }
         
     next() */
    if (userInCookie) {
       /*  let userFromCookie = */
            db.User.findOne(
                {
                    where: {
                        user: userInCookie
                    }
                }
            )
                .then((usuario) => {
                    if (usuario) {
                        req.session.usuariologueado = usuario
                        
                    }

                    if (req.session && req.session.usuariologueado) {
                        res.locals.isLogged = true;
                        res.locals.usuariologueado = req.session.usuariologueado;

                    }
                })
    }
    next();


}

 module.exports = userLoggedMiddleware; 