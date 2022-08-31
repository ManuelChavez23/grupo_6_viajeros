const controller = {
    index: (req, res) =>{
        res.render('index');
    },
    contact: (req, res) =>{
        res.render('contact');
    },
    cart: (req, res) =>{
        res.render('productCart');
    },
    admin: (req, res) =>{
        res.render("admin");
    },
}


module.exports = controller;