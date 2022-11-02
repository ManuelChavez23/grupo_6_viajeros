module.exports = (sequelize, dataTypes) => {
    let alias = 'Status';
    let cols = {
        id: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },
        /* create_at: dataTypes.TIMESTAMP,
        updated_at: dataTypes.TIMESTAMP, */
        outstanding: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            allowNull: false
        },
        offer: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            allowNull: false
        }
    };

    let config = {
        timestamps: false,
        /* deleteAt: false */
    };

    const Status = sequelize.define(alias, cols, config);


    // TERMINAR ESTA PARTE
    Status.associate = (models) => {
        Status.hasMany(models.Destiny, {
            as: 'status',
            foreignKey: 'status_id'
        }) 
    }

    return Status
};