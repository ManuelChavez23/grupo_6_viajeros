module.exports = (sequelize, dataTypes) => {
    let alias = 'Group';
    let cols = {
        id: {
            type: dataTypes.INT(10).UNSIGNED,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },
        /* create_at: dataTypes.TIMESTAMP,
        updated_at: dataTypes.TIMESTAMP, */
        grouping: {
            type: dataTypes.INT(10).UNSIGNED,
            allowNull: false
        },
        single: {
            type: dataTypes.INT(10).UNSIGNED,
            allowNull: false
        }
    };

    let config = {
        timestamps: false,
        /* deleteAt: false */
    };

    const Group = sequelize.define(alias, cols, config);


    // TERMINAR ESTA PARTE
    Group.associate = (models) => {
        Group.belongsTo // hay que chequear esto
    }

    return Group
};