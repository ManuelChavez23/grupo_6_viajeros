/* const fs = require('fs');
const path = require('path');
const Sequelize = require('sequelize');
const fs = require('fs');
const db = require('index.js'); */

module.exports = (sequelize, dataTypes) => {
    let alias = 'Destiny';
    let cols = {
        id: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },
        /* create_at: dataTypes.TIMESTAMP,
        updated_at: dataTypes.TIMESTAMP, */
        name: {
            type: dataTypes.STRING(200),
            // allowNull: false
        },
        date: {
            type: dataTypes.DATE,
            // allowNull: false
        },
        price: {
            type: dataTypes.DECIMAL(10,0),
            // allowNull: false
        },
        detail: {
            type: dataTypes.TEXT,
            // allowNull: false
        },
        destiny_category_id: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            // allowNull: false
        },
        img: {
            type: dataTypes.TEXT,
            // allowNull: false
        },
        status_id: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            // allowNull: false
        },
        extras: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            // allowNull: false
        },
        transport_id: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            // allowNull: false
        },
        group_id: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            // allowNull: false
        },
        meals_id: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            // allowNull: false
        }
    };

    let config = {
        timestamps: false,
        tableName: 'destiny'
        /* deleteAt: false */
    };

    const Destiny = sequelize.define(alias, cols, config);


    // TERMINAR ESTA PARTE
    Destiny.associate = (models) => {
        Destiny.belongsToMany(models.User, {
            as: 'users',
            through: 'Destiny_user',
            foreignKey: 'destiny_id',
            otherKey: 'user_id',
            timestamps: false
        })
    }

    return Destiny
};

