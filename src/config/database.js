// database.js
const { Sequelize } = require('sequelize');
require ('dotenv').config();

const sequelize = new Sequelize(
    process.env.DB_NAME,       // nombre de la base de datos
    process.env.DB_USER,       // usuario
    process.env.DB_PASSWORD,   // contraseña
    {
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    dialect: process.env.DB_DIALECT,
    logging: false
    }
);


// funcion para conectar
async function testConnection(){
    try {
        await sequelize.authenticate();
        console.log('🟢 Conexión a la base de datos establecida con éxito.');
    } catch (error) {
        console.error('🔴 Error al conectar con la base de datos:', error);
    }
}

testConnection();
module.exports = sequelize;











 // Probar conexión
// sequelize.authenticate()
    //.then(() => {
        //console.log('🟢 Conexión a la base de datos establecida con éxito.');
    //})
    //.catch(err => {
        //console.error('🔴 Error al conectar con la base de datos:', err);
    //});

//module.exports = sequelize;
