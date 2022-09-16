const fs = require('fs');
const path = require('path');

const productsJson = fs.readFileSync(path.join(__dirname, '../data/productsBd.json'));
const userJson = fs.readFileSync(path.join(__dirname, '../data/usersBd.json'));

let users = JSON.parse(userJson);
let products = JSON.parse(productsJson);


const controller = {

    saveUserEdit: (req, res) => {
        //creamos nuevamente el objeto para poder modificar el registro del usuario
        let userEdited = {
            id: parseInt(req.params.userId),
            firstName: req.body.firstName,
            lastName: req.body.lastName,
            birth: req.body.birth,
            email: req.body.email,
            user: req.body.user,
            password: req.body.password, //ver como guardar la contra
            category: req.body.category,
            img: req.file.filename,
            phoneNumber: req.body.phoneNumber
        }
        
        //buscamos el usuario en la lista de usuarios por la ID
        let searchUser = users.find(user => user.id == userEdited.id)
        //buscamos el indice del usuario en la lista
        let index = users.indexOf(searchUser);
        //actualizamos la informacion del usuario
        users[index] = userEdited;
        //convertimos el array de usuarios en JSON
        let userJson = JSON.stringify(users, null, ' ');
        //guardamos la informacion en formato JSON en la base de datos de usuarios - usersBd.json
        fs.writeFileSync(path.join(__dirname,'../data/usersBd.json'),  userJson,);
        //redirigimos el navegador a la lista de usuarios
        res.redirect('/userList')
    },

    editUser: (req, res) => {
        let userId = req.params.userId
        
        res.render('userEdit', { users, userId })
    },

    userList: (req, res) => {
        res.render('userList', { users });
    },

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

