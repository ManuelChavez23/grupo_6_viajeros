const fs = require('fs');
const path = require('path');

const productsJson = fs.readFileSync(path.join(__dirname, '../data/productsBd.json'), 'utf-8');

const products = JSON.parse(productsJson);



const controller = {
    index: (req, res) =>{
        res.render('index', {products});
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