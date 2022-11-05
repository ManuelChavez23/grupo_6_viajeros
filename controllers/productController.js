

const db = require('../database/models');
const sequelize = db.sequelize;

const controller = {
    
    detail:  (req, res) =>{


        let idProduct = req.params.id;
        
        db.Destiny.findByPk(idProduct)
            .then((destino) => {
                res.render('productDetail', {destino,idProduct }); 
            })      
        
    },
    products:  (req, res) =>{
        

        db.Destiny.findAll({raw: true, nest: true}).
            then((destinos) => {
                res.render('products', {destinos});
        })

    },

    search: (req, res) => {
        /* let search = req.query.searchBar; */
        /* res.send(search); */

        
    },
    searchResult: (req, res) => {
        let search = req.body.searchBar
        res.render(search);
    }
}


module.exports = controller;


