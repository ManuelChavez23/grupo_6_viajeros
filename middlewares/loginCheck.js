let loginCheck = (req, res, next) => {
    if(req.session.usuariologueado == undefined) {
        next();
    } else {
        res.redirect('/')
    }
}


module.exports = loginCheck;