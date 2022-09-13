const fs = require('fs');

const path = require('path');

const productsJson = fs.readFileSync(path.join(__dirname, '../data/productsBd.json'), 'utf-8');


let products = JSON.parse(productsJson);



const controller = {
    
    adminList: (req, res) =>{
        res.render("adminList");
    },
    add: (req, res) =>{
        res.render("productAdd");
    },
    create: (req, res) => {
        

        let newProduct = {
            id: products.length + 1,
            name: req.body.name,
            detail: req.body.detail,
            price: req.body.price,
            img: req.body.img
            /* category: req.body.category,
            status: req.body.status */
        }

        

        products.push(newProduct);

        let productJson = JSON.stringify(products);

        fs.appendFileSync(path.join(__dirname,'../data/productsBd.json'), productJson + '\n','utf-8');

        res.redirect('/adminList');
    },
    comments: (req, res) =>{
        res.render("comments");
    },
    productEdit: (req, res) =>{
        res.render("productEdit");
    },
}


module.exports = controller;

