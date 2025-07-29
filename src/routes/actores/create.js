// src/routes/actores/create.js
const express = require('express');
const router = express.Router();
const { Actor } = require('../../models');

// POST /actores
router.post('/', async (req, res) => {
    try {
        const { nombreCompleto } = req.body;

        if (!nombreCompleto) {
            return res.status(400).json({ error: 'El nombre completo es obligatorio.' });
        }

        const nuevoActor = await Actor.create({ nombreCompleto });

        res.status(201).json(nuevoActor);
    } catch (error) {
        console.error('Error al crear el actor:', error);
        res.status(500).json({ error: 'Error al crear el actor' });
    }
});

module.exports = router;
