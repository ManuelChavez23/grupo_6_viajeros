let loginCheck = (req, res, next) => {
    if(req.session.usuariologueado == undefined) {
        next();
    } else {
        res.send('pagina solo para invitados')
    }
}


module.exports = loginCheck;