function adminMiddleware (req, res, next) {
    if (res.locals.isAdmin) {
        res.redirect('/')
    }

    next();
}

module.exports = adminMiddleware;