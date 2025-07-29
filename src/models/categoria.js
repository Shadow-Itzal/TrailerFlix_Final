// modelos/Categoria.js
module.exports = (sequelize, DataTypes) => {
  const Categoria = sequelize.define('Categoria', {
    categoriaID: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true
    },
    categoria: {
      type: DataTypes.STRING(50),
      allowNull: false
    }
  }, {
    tableName: 'categorias',
    timestamps: false
  });

  Categoria.associate = function(models) {
    Categoria.hasMany(models.Contenido, {
      foreignKey: 'categoriaID',
      as: 'contenidos'
    });
  };

  return Categoria;
};