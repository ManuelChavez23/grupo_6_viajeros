module.exports = (sequelize, dataTypes) => {
    let alias = 'Group';
    let cols = {
        id: {
            type: dataTypes.INTEGER(10).UNSIGNED,
            primaryKey: true,
            allowNull: false,
            autoIncrement: true
        },
        /* create_at: dataTypes.TIMESTAMP,
        updated_at: dataTypes.TIMESTAMP, */
        group: {
            type: dataTypes.STRING(20),
            //allowNull: false
        }};

    let config = {
        timestamps: false,
        /* deleteAt: false */
    };

    const Group = sequelize.define(alias, cols, config);


    // TERMINAR ESTA PARTE
    Group.associate = (models) => {
        Group.hasMany(models.Destiny, {
            as: 'destinyGroup',
            foreignKey: 'group_id'
        }) // hay que chequear esto
    }

    return Group
};