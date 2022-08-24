const express = require('express');


const dotenv = require('dotenv').config();
const app = express();

const mainRouter = require('./routes/mainRoutes');
const userRouter = require('./routes/userRoutes');
const productRouter = require('./routes/productRoutes');

app.use(express.static('public'));

app.use(mainRouter);
app.use(userRouter);
app.use(productRouter);

app.listen(process.env.PORT || 3000, () =>{
    console.log('Servidor escuchando ' + process.env.PORT);
});






