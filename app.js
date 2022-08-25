const express = require('express');


const dotenv = require('dotenv').config();
const app = express();

const mainRouter = require('./routes/mainRoutes');

const userRouter = require('./routes/userRoutes');
const productRouter = require('./routes/productRoutes');
const path = require('path');

app.set('view engine', 'ejs');
app.set('views', [
    path.join(__dirname, './views'),
    path.join(__dirname, './views/user')
    
]);

app.use(express.static('public'));

app.use(mainRouter);
app.use(userRouter);
app.use('/product', productRouter);

app.listen(process.env.PORT || 3000, () =>{
    console.log('Servidor escuchando ' + process.env.PORT);
});






