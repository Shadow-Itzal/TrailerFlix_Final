// /src/routes/contenidos/create.js
const express = require('express');
const router = express.Router();
const { Contenido } = require('../../models');

// POST /contenidos
router.post('/', async (req, res) => {
    try {
        const {
            poster,
            titulo,
            categoriaID,
            generoID,
            resumen,
            temporadas,
            trailer,
            duracion
        } = req.body;

        const nuevoContenido = await Contenido.create({
            poster,
            titulo,
            categoriaID,
            generoID,
            resumen,
            temporadas,
            trailer,
            duracion
        });

        res.status(201).json(nuevoContenido);
    } catch (error) {
        console.error('Error al crear contenido:', error);
        res.status(500).json({ error: 'Error al crear contenido' });
    }
});

module.exports = router;
