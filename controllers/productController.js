

const db = require('../database/models');
const sequelize = db.sequelize;
const { Op } = require("sequelize");

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
        let search =  req.query.searchBar;
        let mensaje = "No se encontro el resultado de " + search 
        
        db.Destiny.findAll({
            where: {name:{[db.Sequelize.Op.like]: '%' + search + '%'}}
        })
            .then((destinos) => {
                console.log(destinos)
            if  (destinos.length >0){
                res.render('searchResult', {destinos, search})
            }else{
                res.render('searchResult', {destinos, mensaje , search})
                    
            }
 
        })
    }
}


module.exports = controller;


