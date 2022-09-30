const express = require('express');
const dotenv = require('dotenv').config();
const app = express();
const mainRouter = require('./routes/mainRoutes');
const userRouter = require('./routes/userRoutes');
const productRouter = require('./routes/productRoutes');
const adminRouter = require('./routes/adminRoutes');
const path = require('path');
const methodOverride = require('method-override');
const session = require('express-session');
const cookieParser = require('cookie-parser');

app.set('view engine', 'ejs');
app.set('views', [
    path.join(__dirname, './views'),
    path.join(__dirname, './views/user'),
    path.join(__dirname, './views/admin'),
    path.join(__dirname, './views/product')
    
]);


app.use(cookieParser());
app.use(session({secret: 'Es un secreto jeje'}));
app.use(express.urlencoded({ extended: true }));
app.use(express.json());
app.use(express.static('public'));
app.use(methodOverride('_method'));
app.use(mainRouter);
app.use(userRouter);
app.use('/product', productRouter);
app.use(adminRouter);


app.listen(process.env.PORT || 3000, () =>{
    console.log('Servidor escuchando ' + process.env.PORT);
});


app.use((req, res, next) => {
    res.status(404).render('404');
})



