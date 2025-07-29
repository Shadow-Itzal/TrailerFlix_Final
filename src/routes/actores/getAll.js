// src/routes/actores/getAll.js
const express = require('express');
const router = express.Router();
const { Actor } = require('../../models'); // Importa el modelo desde /models/index.js

// GET /actores
router.get('/', async (req, res) => {
    try {
        const actores = await Actor.findAll();
        res.json(actores);
    } catch (error) {
        console.error('Error al obtener los actores:', error);
        res.status(500).json({ error: 'Error al obtener los actores' });
    }
});

module.exports = router;
