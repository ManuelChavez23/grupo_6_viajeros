const path = require('path');
const fs = require('fs');
const userJson = fs.readFileSync(path.join(__dirname, '../data/usersBd.json'));
let users = JSON.parse(userJson);

function userLoggedMiddleware (req, res, next) {
    res.locals.isLogged = false;


    let userInCookie = req.cookies.user;
    let userFromCookie = users.find(elemento => elemento.user == userInCookie);


    if(userFromCookie) {
        req.session.usuariologueado = userFromCookie
    }

    if (req.session && req.session.usuariologueado) {
        res.locals.isLogged = true;
        res.locals.usuariologueado = req.session.usuariologueado;
        //res.redirect('/perfil')
    }

    next();
}

module.exports = userLoggedMiddleware;