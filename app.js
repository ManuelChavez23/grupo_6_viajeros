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
app.get('/carrito', (req, res) =>{
    res.sendFile(path.join(__dirname,'/views/carrito.html'))
});