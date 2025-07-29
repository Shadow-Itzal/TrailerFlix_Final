const express = require('express');
const router = express.Router();
const { Genero } = require('../../models');

// POST /generos
router.post('/', async (req, res) => {
    try {
        const { genero } = req.body;

        if (!genero) {
            return res.status(400).json({ error: 'El campo "genero" es obligatorio' });
        }

        const nuevoGenero = await Genero.create({ genero });
        res.status(201).json(nuevoGenero);
    } catch (error) {
        console.error('Error al crear el género:', error);
        res.status(500).json({ error: 'Error al crear el género' });
    }
});

module.exports = router;