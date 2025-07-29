const express = require('express');
const router = express.Router();
const { Genero } = require('../../models');

// GET /generos
router.get('/', async (req, res) => {
    try {
        const generos = await Genero.findAll();
        res.json(generos);
    } catch (error) {
        console.error('Error al obtener los géneros:', error);
        res.status(500).json({ error: 'Error al obtener los géneros' });
    }
});

module.exports = router;
