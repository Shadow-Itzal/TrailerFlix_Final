// /src/routes/contenidos/getAll.js
const express = require('express');
const router = express.Router();
const { Contenido, Categoria, Genero, Tag, Actor } = require('../../models');

// GET /contenidos
router.get('/', async (req, res) => {
    try {
        const contenidos = await Contenido.findAll({
            include: [
                { model: Categoria, as: 'categoria' },
                { model: Genero, as: 'genero' },
                { model: Tag, as: 'tags', through: { attributes: [] } },
                { model: Actor, as: 'actores', through: { attributes: [] } }
            ]
        });
        res.json(contenidos);
    } catch (error) {
        console.error('Error al obtener los contenidos:', error);
        res.status(500).json({ error: 'Error al obtener los contenidos' });
    }
});

module.exports = router;
