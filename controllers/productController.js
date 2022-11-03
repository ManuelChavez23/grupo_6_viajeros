
const fs = require('fs');
const path = require('path');

const productsJson = fs.readFileSync(path.join(__dirname, '../data/productsBd.json'), 'utf-8');

const products = JSON.parse(productsJson);

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
                console.log(destinos);
        })

    },
}


module.exports = controller;


