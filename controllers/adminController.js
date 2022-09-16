const fs = require('fs');

const path = require('path');

const productsJson = fs.readFileSync(path.join(__dirname, '../data/productsBd.json'));


let products = JSON.parse(productsJson);



const controller = {
    saveEdit: (req, res) => {
        
        let editProduct = {
            id: parseInt(req.params.id),
            name: req.body.newName,
            date: req.body.newDate,
            insure: req.body.insure,
            price: req.body.newPrice,
            category: req.body.category,
            img: req.file.filename,
            status: req.body.status,
            detail: req.body.newDetail,
            extras: req.body.newExtras,
            guide: req.body.guide,
            group: req.body.group,
            meals: req.body.meals,
            transport: req.body.transport
        }

        

        let searchProduct = products.find(product => product.id == editProduct.id)
        let index = products.indexOf(searchProduct);
        console.log(index);
        products[index] = editProduct;
        //res.send(products);
        let productsJson = JSON.stringify(products, null, ' ');
        
        fs.writeFileSync(path.join(__dirname,'../data/productsBd.json'),  productsJson,);
        /* searchProduct = editProduct
        console.log(editProduct);
        res.send(searchProduct);
        console.log(searchProduct);
        products.push(searchProduct) */
        
     
        res.redirect('/adminList');

    },
    adminList: (req, res) =>{
        res.render("adminList", {products});
    },
    add: (req, res) =>{
        res.render("productAdd");
    },
    create: (req, res) => {
        

        let newProduct = {
            id: products.length + 1,
            name: req.body.name,
            date: req.body.date,
            insure: req.body.insure,
            detail: req.body.detail,
            price: req.body.price,
            category: req.body.category,
            img: req.file.filename,
            status: req.body.status,
            extras: req.body.extras,
            guide: req.body.guide,
            group: req.body.group,
            meals: req.body.meals,
            transport: req.body.transport
        }

        

        products.push(newProduct);

        let productsJson = JSON.stringify(products, null, ' ');

        fs.writeFileSync(path.join(__dirname,'../data/productsBd.json'),  productsJson);
     
        res.redirect('/adminList');
    },
    comments: (req, res) =>{
        res.render("comments");
    },
    productEdit: (req, res) =>{
        let idProduct = req.params.id;
        res.render("edit", {products, idProduct});
    },
    delete: (req, res) =>{
        const productDelete = products.filter(product => product.id != req.params.id );

        for(let i = 0; i < productDelete.length; i++){
            productDelete[i].id = i +1;
        }

        let productsJson = JSON.stringify(productDelete, null, ' ');

        fs.writeFileSync(path.join(__dirname,'../data/productsBd.json'),  productsJson);
     
        res.redirect('/adminList');

    }
}


module.exports = controller;

