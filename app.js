const express = require('express');


const dotenv = require('dotenv').config();
const app = express();

const mainRouter = require('./routes/mainRoutes');
/* const userRouter = require('./routes/userRoutes'); */

app.use(express.static('public'));

app.use(mainRouter);
/* app.use(userRouter); */


app.listen(process.env.PORT || 3000, () =>{
    console.log('Servidor escuchando ' + process.env.PORT);
});





app.get('/cart', (req, res) =>{
    res.sendFile(path.join(__dirname,'/views/productCart.html'))
});

app.get('/product', (req, res) =>{
    res.sendFile(path.join(__dirname,'/views/productDetail.html'))
});

