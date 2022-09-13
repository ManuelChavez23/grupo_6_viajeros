
const fs = require('fs');
const path = require('path');

const productsJson = fs.readFileSync(path.join(__dirname, '../data/productsBd.json'), 'utf-8');

const products = JSON.parse(productsJson);

const controller = {
    
    detail:  (req, res) =>{
        let idProduct = req.params.id;
<<<<<<< HEAD
        
        products.find( productActual => productActual.id == idProduct)
       
        res.render('productDetail', {products});
=======

        products.forEach(productActual => {
            if (productActual.id === idProduct) {
                productActual.name = req.body.name,
                productActual.price = req.body.price,
                productActual.detail = req.body.detail,
                productActual.img = req.body.img
            }
        })
        res.render('productDetail', {products, idProduct});
>>>>>>> e97a83602007a3e809efcf984e00b463338d0d1e
    },
    products:  (req, res) =>{
        res.render('products', {products});
    },
}


module.exports = controller;


