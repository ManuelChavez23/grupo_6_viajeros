module.exports = (sequelize, dataTypes) => {
    let alias = 'Meals_id';
    let cols = {
        id: {
            type: dataTypes.INT(10).UNSIGNED,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },
        /* create_at: dataTypes.TIMESTAMP,
        updated_at: dataTypes.TIMESTAMP, */
        all_inclusive: {
            type: dataTypes.INT(10).UNSIGNED,
            allowNull: false
        },
        half_board_included: {
            type: dataTypes.INT(10).UNSIGNED,
            allowNull: false
        },
        full_board: {
            type: dataTypes.INT(10).UNSIGNED,
            allowNull: false
        },
        not_include_meals: {
            type: dataTypes.INT(10).UNSIGNED,
            allowNull: false
        }
    };

    let config = {
        timestamps: false,
        /* deleteAt: false */
    };

    const Meals_id = sequelize.define(alias, cols, config);


    // TERMINAR ESTA PARTE
    Meals_id.associate = (models) => {
        Meals_id.belongsTo // hay que chequear esto
    }

    return Meals_id
};