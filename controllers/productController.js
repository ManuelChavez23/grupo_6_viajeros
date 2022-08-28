const controller = {
    
    detail:  (req, res) =>{
        res.render('productDetail');
    },
    listado: (req, res) =>{
        res.render("listado");
    },
    agregar: (req, res) =>{
        res.render("agregar");
    },
}


module.exports = controller;


