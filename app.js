const express = require('express');

const path = require('path');

const app = express();



app.use(express.static('public'));

app.listen(3000, () =>{
    console.log('Estamos en el puerto 3000')
});

app.get('/index', (req, res) =>{
    res.sendFile(path.join(__dirname,'/views/index.html'))
});

app.get('/login', (req, res) =>{
    res.sendFile(path.join(__dirname,'/views/login.html'))
});

app.get('/cart', (req, res) =>{
    res.sendFile(path.join(__dirname,'/views/productCart.html'))
});

app.get('/product', (req, res) =>{
    res.sendFile(path.join(__dirname,'/views/productDetail.html'))
});

app.get('/contact', (req, res) =>{
    res.sendFile(path.join(__dirname,'/views/contacto.html'))
});

app.get('/register', (req, res) =>{
    res.sendFile(path.join(__dirname,'/views/register.html'))
});