const e = require('express');
const db = require('../../database/models');
const sequelize = db.sequelize;

const controller = {
    destiny: (req,res) => {
        db.Destiny.findAll({
                raw:true,
                nest:true,
                attributes: ['id', 'name', 'detail']
            }) 
        .then(destinys => {
            destinys = destinys.map(destiny => ({
                ...destiny,
                productDescription: `/api/products/${destiny.id}`,
        }))
            res.json({
                count: destinys.length,
                data: destinys,
                status: 200
            })
        })
        
    },
    destinyId: (req, res) => {
        db.Destiny.findByPk(req.params.id, {raw:true, nest:true,
            include: ['transports', 'meals', 'salidas', 'categorys', 'anuncios']})
        .then(destinyId => {
            res.json({
                ...destinyId,
               img: `/img/${destinyId.img}` 
            })
        })
    }
}

module.exports = controller