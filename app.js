// app.js
require('dotenv').config();
const express = require('express');
const cors = require('cors');
const db = require('./src/models'); // Importa los modelos y asociaciones
const app = express();
const PORT = process.env.PORT || 3006;

// Middlewares
app.use(cors()); // Habilita CORS por si querés consumir desde otro origen
app.use(express.json());
app.use(express.urlencoded({ extended: false }));

// Conexión a la base de datos
db.sequelize.sync({ alter: false })
    .then(() => {
        console.log('🟢 Base de datos sincronizada.');
    })
    .catch((err) => {
        console.error('🔴 Error al sincronizar la base de datos:', err);
    });

// Ruta de inicio
app.get('/', (req, res) => {
    res.send('🎬 Bienvenid@ a TrailerFlix API');
});

// ---------------------
// Rutas de categorías
// ---------------------
app.use('/categorias', require('./src/routes/categorias/getAll'));
app.use('/categorias', require('./src/routes/categorias/getById'));
app.use('/categorias', require('./src/routes/categorias/create'));
app.use('/categorias', require('./src/routes/categorias/update'));
app.use('/categorias', require('./src/routes/categorias/delete'));

// ---------------------
// Rutas de géneros
// ---------------------
app.use('/generos', require('./src/routes/generos/getAll'));
app.use('/generos', require('./src/routes/generos/getById'));
app.use('/generos', require('./src/routes/generos/create'));
app.use('/generos', require('./src/routes/generos/update'));
app.use('/generos', require('./src/routes/generos/delete'));

// ---------------------
// Rutas de tags
// ---------------------
app.use('/tags', require('./src/routes/tags/getAll'));
app.use('/tags', require('./src/routes/tags/getById'));
app.use('/tags', require('./src/routes/tags/create'));
app.use('/tags', require('./src/routes/tags/update'));
app.use('/tags', require('./src/routes/tags/delete'));

// ---------------------
// Rutas de actores
// ---------------------
app.use('/actores', require('./src/routes/actores/getAll'));
app.use('/actores', require('./src/routes/actores/getById'));
app.use('/actores', require('./src/routes/actores/create'));
app.use('/actores', require('./src/routes/actores/update'));
app.use('/actores', require('./src/routes/actores/delete'));
app.use('/actores', require('./src/routes/actores/getContenidosByNombre'));

// ---------------------
// Rutas de contenidos
// ---------------------
app.use('/contenidos', require('./src/routes/contenidos/getAll'));
app.use('/contenidos', require('./src/routes/contenidos/getById'));
app.use('/contenidos', require('./src/routes/contenidos/create'));
app.use('/contenidos', require('./src/routes/contenidos/update'));
app.use('/contenidos', require('./src/routes/contenidos/delete'));
app.use('/contenidos', require('./src/routes/contenidos/getByTitulo'));
app.use('/contenidos', require('./src/routes/contenidos/getByTipo'));

// ----------------------------
// Rutas de contenido_actores
// ----------------------------
app.use('/contenido_actores', require('./src/routes/contenido_actores/getAll'));
app.use('/contenido_actores', require('./src/routes/contenido_actores/create'));
app.use('/contenido_actores', require('./src/routes/contenido_actores/delete'));

// -------------------------
// Rutas de contenido_tags
// -------------------------
app.use('/contenido_tags', require('./src/routes/contenido_tags/getAll'));
app.use('/contenido_tags', require('./src/routes/contenido_tags/create'));
app.use('/contenido_tags', require('./src/routes/contenido_tags/delete'));



// Iniciar servidor
app.listen(PORT, () => {
    console.log(`🚀 Servidor corriendo en http://localhost:${PORT}`);
});
