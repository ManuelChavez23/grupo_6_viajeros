const controller = {
    index: (req, res) =>{
        res.render('index');
    },
    contact: (req, res) =>{
        res.render('contacto');
    },
    cart: (req, res) =>{
        res.render('productCart');
    },
    administrador: (req, res) =>{
        res.render("administrador");
    },
}


module.exports = controller;