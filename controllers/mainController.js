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
}


module.exports = controller;