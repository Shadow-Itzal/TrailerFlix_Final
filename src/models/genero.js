// modelos/Genero.js
module.exports = (sequelize, DataTypes) => {
  const Genero = sequelize.define('Genero', {
    generoID: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true
    },
    genero: {
      type: DataTypes.STRING(50),
      allowNull: false
    }
  }, {
    tableName: 'generos',
    timestamps: false
  });

  Genero.associate = function(models) {
    Genero.hasMany(models.Contenido, {
      foreignKey: 'generoID',
      as: 'contenidos'
    });
  };

  return Genero;
};