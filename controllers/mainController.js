const fs = require('fs');
const path = require('path');

const productsJson = fs.readFileSync(path.join(__dirname, '../data/productsBd.json'), 'utf-8');
const userJson = fs.readFileSync(path.join(__dirname, '../data/usersBd.json'));

let users = JSON.parse(userJson);
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
    adminLoginCheck: (req, res) => {
        //res.send(req.body)

        let adminCheck = {
            user: req.body.userAdmin,
            password: req.body.adminPassword
        }

        let check = users.find(elemento => elemento.user == adminCheck.user);

        if(check.category == "user") {
            res.send('no sos admin');
        } else {
            if(adminCheck.password == check.password) {
                res.redirect('adminList');
            } else {
                res.redirect('administrador');
            }
        }
    }
}


module.exports = controller;