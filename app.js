const express = require('express');

const app = express();

const path = require('path');

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