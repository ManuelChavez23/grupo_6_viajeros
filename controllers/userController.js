const fs = require('fs');
const path = require('path');

const usersJson = fs.readFileSync(path.join(__dirname, '../data/usersBd.json'), 'utf-8');

const users = JSON.parse(usersJson);


const userController = {
    login: (req, res) =>{
        res.render('login')
    },
    register: (req, res) =>{
        res.render('register');
    }
}

module.exports = userController;