// modelos/Tag.js
module.exports = (sequelize, DataTypes) => {
  const Tag = sequelize.define('Tag', {
    tagID: {
      type: DataTypes.INTEGER,
      autoIncrement: true,
      primaryKey: true
    },
    tag: {
      type: DataTypes.STRING(50),
      allowNull: false
    }
  }, {
    tableName: 'tags',
    timestamps: false
  });

  Tag.associate = function(models) {
    Tag.belongsToMany(models.Contenido, {
      through: 'contenido_tags',
      foreignKey: 'tagID',
      otherKey: 'contenidoID',
      as: 'contenidos'
    });
  };

  return Tag;
};

