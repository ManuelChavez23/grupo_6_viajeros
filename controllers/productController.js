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
    comentarios: (req, res) =>{
        res.render("comentarios");
    },
    editar: (req, res) =>{
        res.render("editar");
    },
}


module.exports = controller;


