const path = require('path');
const fs = require('fs');
const userJson = fs.readFileSync(path.join(__dirname, '../data/usersBd.json'));
let users = JSON.parse(userJson);

const db = require('../database/models');
const sequelize = db.sequelize;

function userLoggedMiddleware (req, res, next) {
    res.locals.isLogged = false;
    res.locals.isAdmin = false;

    console.log(req.cookies)
    let userInCookie = req.cookies.user;
    
    let userFromCookie = 
    db.User.findAll()
        .then((usuarios) => {
            if(usuarios) {
            req.session.usuariologueado = userInCookie
        }
    
        if (req.session && req.session.usuariologueado) {
            res.locals.isLogged = true;
            res.locals.usuariologueado = req.session.usuariologueado;
            if ( req.session.usuariologueado.user_category_id === 2){
                res.locals.isAdmin = true;
            }
        }
        
        next()});

    
}

module.exports = userLoggedMiddleware;