module.exports = (sequelize, dataTypes) => {
    let alias = 'Destiny_category';
    let cols = {
        id: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },
        /* create_at: dataTypes.TIMESTAMP,
        updated_at: dataTypes.TIMESTAMP, */
        nationals: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            allowNull: false
        },
        internationals: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            allowNull: false
        }
    };

    let config = {
        timestamps: false,
        /* deleteAt: false */
    };

    const Destiny_category = sequelize.define(alias, cols, config);


    // TERMINAR ESTA PARTE
    Destiny_category.associate = (models) => {
        Destiny_category.hasMany(models.Destiny, {
            as: 'category',
            foreignKey: 'destiny_category_id'
        }) // hay que chequear esto
    }

    return Destiny_category
};