function userLoggedMiddleware (req, res, next) {
    res.locals.isLogged = false;

    if (req.session && req.session.usuariologueado) {
        res.locals.isLogged = true;
        res.locals.usuariologueado = req.session.usuariologueado;
        //res.redirect('/perfil')
    }

    next();
}

module.exports = userLoggedMiddleware;