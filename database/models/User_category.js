module.exports = (sequelize, dataTypes) => {
    let alias = 'User_category';
    let cols = {
        id: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },
        /* create_at: dataTypes.TIMESTAMP,
        updated_at: dataTypes.TIMESTAMP, */
        admin: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            allowNull: false
        },
        user: {
            type: dataTypes.INTEGER(10).UNSIGNED,
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
        User_category.hasMany(models.User, {
            as: 'user_category',
            foreignKey: 'user_category_id'
        }) // hay que chequear esto
    }

    return User_category
};