
const fs = require('fs');
const path = require('path');

const productsJson = fs.readFileSync(path.join(__dirname, '../data/productsBd.json'), 'utf-8');

const products = JSON.parse(productsJson);

const controller = {
    
    detail:  (req, res) =>{
        let idProduct = req.params.id;
        
        products.find( productActual => productActual.id == idProduct)
       
        res.render('productDetail', {products});

    },
    products:  (req, res) =>{
        res.render('products', {products});
    },
}


module.exports = controller;


