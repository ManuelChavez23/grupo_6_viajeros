module.exports = (sequelize, dataTypes) => {
    let alias = 'Transport_id';
    let cols = {
        id: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },
        /* create_at: dataTypes.TIMESTAMP,
        updated_at: dataTypes.TIMESTAMP, */
        bus: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            allowNull: false
        },
        plane: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            allowNull: false
        },
        boat: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            allowNull: false
        }
    };

    let config = {
        timestamps: false,
        /* deleteAt: false */
    };

    const Transport_id = sequelize.define(alias, cols, config);


    // TERMINAR ESTA PARTE
    Transport_id.associate = (models) => {
        Transport_id.hasMany(models.Destiny, {
            as: 'transport',
            foreignKey: 'transport_id'
        }) // hay que chequear esto
    }

    return Transport_id
};