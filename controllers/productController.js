
const fs = require('fs');
const path = require('path');

const productsJson = fs.readFileSync(path.join(__dirname, '../data/productsBd.json'), 'utf-8');

const products = JSON.parse(productsJson);

const controller = {
    
    detail:  (req, res) =>{
        let idProduct = req.params.id;

        products.forEach(productActual => {
            if (productActual.id === idProduct) {
                productActual.name = req.body.name,
                productActual.price = req.body.price,
                productActual.detail = req.body.detail,
                productActual.img = req.body.img
            }
        })
        res.render('productDetail', {products, idProduct});
    },
    products:  (req, res) =>{
        res.render('products', {products});
    },
}


module.exports = controller;


