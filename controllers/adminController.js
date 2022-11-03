const fs = require('fs');
const path = require('path');
const bcrypt = require('bcryptjs');
const productsJson = fs.readFileSync(path.join(__dirname, '../data/productsBd.json'));
const userJson = fs.readFileSync(path.join(__dirname, '../data/usersBd.json'));

let users = JSON.parse(userJson);
let products = JSON.parse(productsJson);

const db = require('../database/models');
const sequelize = db.sequelize;

const controller = {

    deleteUser: (req, res) => {
        //creamos un nuevo array de productos sin el producto a eliminar
        const userToDelete = users.filter(user => user.id != req.params.userId );
        //redenominamos los id de cada elemento
        for(let i = 0; i < userToDelete.length; i++){
            userToDelete[i].id = i +1;
        }
        //convertimos el array de productos a formato JSON
        let userJson = JSON.stringify(userToDelete, null, ' ');
        //almacenamos la informacion en la base de datos
        fs.writeFileSync(path.join(__dirname,'../data/usersBd.json'),  userJson);
        //redireccionamos el navegador hacia adminLists
        res.redirect('/userList');
        /* res.redirect('back');
        setTimeout(() => {
    window.location.reload(true);
  }, 100); */
    },

    saveUserEdit: (req, res) => {
        //creamos nuevamente el objeto para poder modificar el registro del usuario
        let userEdited = {
            id: parseInt(req.params.userId),
            firstName: req.body.firstName,
            lastName: req.body.lastName,
            birth: req.body.birth,
            email: req.body.email,
            user: req.body.user,
            password: bcrypt.hashSync(req.body.password, 10), //ver como guardar la contra
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
        
        let destinyId = req.params.id

        db.Destiny.update({
            id: parseInt(destinyId),
            name: req.body.newName,
            date: req.body.newDate,
            price: req.body.newPrice,
            detail: req.body.newDetail,
            destiny_category_id: req.body.category,
            img: req.file.filename,
            status_id: req.body.status,
            extras_id: req.body.newExtras,
            transport_id: req.body.transport,
            group_id: req.body.group,
            meals_id: req.body.meals
    }, {
        where: {id: destinyId}
    }).then(res.redirect('/adminList'))
    .catch(e => {
        res.send(e);
    });
        /* let editProduct = {
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
        } */

        

        /* let searchProduct = products.find(product => product.id == editProduct.id)
        let index = products.indexOf(searchProduct);
        console.log(index);
        products[index] = editProduct;
        //res.send(products);
        let productsJson = JSON.stringify(products, null, ' ');
        
        fs.writeFileSync(path.join(__dirname,'../data/productsBd.json'),  productsJson,); */
        /* searchProduct = editProduct
        console.log(editProduct);
        res.send(searchProduct);
        console.log(searchProduct);
        products.push(searchProduct) */
        
     
        //res.redirect('/adminList');

    },
    adminList: (req, res) =>{
        db.Destiny.findAll()
        .then(products => res.render("adminList", {products}));


        //res.render("adminList", {products});
    },
    add: (req, res) =>{
        res.render("productAdd");
    },
    create: (req, res) => {
        

        db.Destiny.create({
            name: req.body.name,
            date: req.body.date,
            price: req.body.insure,
            detail: req.body.detail,
            destiny_category_id: req.body.category,
            img: req.file.filename,
            status_id: req.body.status,
            extras: req.body.extras,
            transport_id: req.body.transport,
            group_id: req.body.group,
            meals_id: req.body.meals
        }).then(() => {
            res.redirect('/adminList');
        }).catch(e => {
            res.send(e)
        })

        /* products.push(newProduct);

        let productsJson = JSON.stringify(products, null, ' ');

        fs.writeFileSync(path.join(__dirname,'../data/productsBd.json'),  productsJson); */
      
    },
    comments: (req, res) =>{
        res.render("comments");
    },
    productEdit: (req, res) =>{
        let idProduct = req.params.id;
        db.Destiny.findOne({
            where: {
                id: idProduct,
            }
        }).then( product => {
            res.render("edit", {product, idProduct});
        }).catch(e => {
            res.send(e);
        })
        
    },
    delete: (req, res) =>{

        let destiny = req.params.id

        db.Destiny.destroy({
            where: {
                id: destiny,
            }
        }).then(() => {
            return res.redirect('/adminList');
        })


        //creamos un nuevo array de productos sin el producto a eliminar
        /* const productDelete = products.filter(product => product.id != req.params.id );
        //redenominamos los id de cada elemento
        for(let i = 0; i < productDelete.length; i++){
            productDelete[i].id = i +1;
        }
        //convertimos el array de productos a formato JSON
        let productsJson = JSON.stringify(productDelete, null, ' ');
        //almacenamos la informacion en la base de datos
        fs.writeFileSync(path.join(__dirname,'../data/productsBd.json'),  productsJson);
        //redireccionamos el navegador hacia adminLists
        res.redirect('/adminList'); */

    }
}


module.exports = controller;

