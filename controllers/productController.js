const fs = require('fs');
const path = require('path');

const productsJson = fs.readFileSync(path.join(__dirname, '../data/productsBd.json'), 'utf-8');

const products = JSON.parse(productsJson);

const controller = {
    
    detail:  (req, res) =>{
        res.render('productDetail');
    },
    products:  (req, res) =>{
        res.render('products', {products});
    },
}


module.exports = controller;


