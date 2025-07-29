const express = require('express');
const router = express.Router();
// 👇 Esto accede a models/index.js y toma solo el modelo "Categoria"
const { Categoria } = require('../../models'); // revisar bien ruta correcta

// GET /categorias
router.get('/', async (req, res) => {
    try {
        const categorias = await Categoria.findAll();
        res.json(categorias);
    } catch (error) {
        console.error('Error al obtener las categorías:', error);
        res.status(500).json({ error: 'Error al obtener las categorías' });
    }
});

module.exports = router;


