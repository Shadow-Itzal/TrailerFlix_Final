// src/routes/contenido_actores/getAll.js
const express = require('express');
const router = express.Router();
const { Contenido, Actor } = require('../../models');

// GET /contenido_actores
router.get('/', async (req, res) => {
    try {
        const contenidos = await Contenido.findAll({
        include: {
            model: Actor,
            as: 'actores',
            through: { attributes: [] } // oculta la tabla intermedia
        }
    });

    res.json(contenidos);
    } catch (error) {
        console.error('Error al obtener las relaciones contenido-actores:', error);
        res.status(500).json({ error: 'Error al obtener relaciones' });
    }
});

module.exports = router;

// ¿Qué hace este código?
// * Recupera todos los contenidos, incluyendo sus actores relacionados.
// * Oculta los detalles internos de la tabla contenido_actores.
