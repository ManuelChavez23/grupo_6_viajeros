module.exports = (sequelize, dataTypes) => {
    let alias = 'User_category';
    let cols = {
        id: {
            type: dataTypes.INT(10).UNSIGNED,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },
        /* create_at: dataTypes.TIMESTAMP,
        updated_at: dataTypes.TIMESTAMP, */
        admin: {
            type: dataTypes.INT(10).UNSIGNED,
            allowNull: false
        },
        user: {
            type: dataTypes.INT(10).UNSIGNED,
            allowNull: false
        }
    };

    let config = {
        timestamps: false,
        /* deleteAt: false */
    };

    const User_category = sequelize.define(alias, cols, config);


    // TERMINAR ESTA PARTE
    User_category.associate = (models) => {
        User_category.belongsTo // hay que chequear esto
    }

    return User_category
};