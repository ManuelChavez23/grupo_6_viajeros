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
        categoria: {
            type: dataTypes.STRING(200),
            allowNull: false
        },
    };

    let config = {
        timestamps: false,
        /* deleteAt: false */
    };

    const Destiny_category = sequelize.define(alias, cols, config);


    
    Destiny_category.associate = (models) => {
        Destiny_category.hasMany(models.Destiny, {
            as: 'categoriaDestino',
            foreignKey: 'destiny_category_id'
        }) 
    }

    return Destiny_category
};