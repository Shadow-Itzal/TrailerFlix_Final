// modelos/Contenido.js
module.exports = (sequelize, DataTypes) => {
  const Contenido = sequelize.define('Contenido', {
    contenidoID: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true
    },
    poster: DataTypes.STRING(255),
    titulo: {
      type: DataTypes.STRING(255),
      allowNull: false
    },
    categoriaID: DataTypes.INTEGER,
    generoID: DataTypes.INTEGER,
    resumen: DataTypes.TEXT,
    temporadas: DataTypes.INTEGER,
    trailer: DataTypes.STRING(255),
    duracion: DataTypes.STRING(50)
  }, {
    tableName: 'contenidos',
    timestamps: false
  });


  Contenido.associate = function(models) {
    
    Contenido.belongsTo(models.Categoria, {
      foreignKey: 'categoriaID',
      as: 'categoria'
    });

    Contenido.belongsTo(models.Genero, {
      foreignKey: 'generoID',
      as: 'genero'
    });

    Contenido.belongsToMany(models.Actor, {
      through: 'contenido_actores',
      foreignKey: 'contenidoID',
      otherKey: 'actorID',
      as: 'actores'
    });

    Contenido.belongsToMany(models.Tag, {
      through: 'contenido_tags',
      foreignKey: 'contenidoID',
      otherKey: 'tagID',
      as: 'tags'
    });

  };

  return Contenido;
};