const path = require('path');

const controller = {
    index: (req, res) =>{
        res.sendFile(path.join(__dirname,'../views/index.html'))
    },
    contact: (req, res) =>{
        res.sendFile(path.join(__dirname,'../views/contacto.html'))
    }
}


module.exports = controller;