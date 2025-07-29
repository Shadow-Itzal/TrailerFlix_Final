// modelos/Actor.js
module.exports = (sequelize, DataTypes) => {
  const Actor = sequelize.define('Actor', {
    actorID: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true
    },
    nombreCompleto: {
      type: DataTypes.STRING(255),
      allowNull: false
    }
  }, {
    tableName: 'actores',
    timestamps: false
  });

  Actor.associate = function(models) {
    Actor.belongsToMany(models.Contenido, {
      through: 'contenido_actores',
      foreignKey: 'actorID',
      otherKey: 'contenidoID',
      as: 'contenidos'
    });
  };

  return Actor;
};

