const controller = {
    
    adminList: (req, res) =>{
        res.render("adminList");
    },
    add: (req, res) =>{
        res.render("productAdd");
    },
    comments: (req, res) =>{
        res.render("comments");
    },
    productEdit: (req, res) =>{
        res.render("productEdit");
    },
}


module.exports = controller;

