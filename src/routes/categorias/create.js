const express = require('express');
const router = express.Router();
const { Categoria } = require('../../models');

// POST /categorias
router.post('/', async (req, res) => {
    try {
        const { categoria } = req.body;

        if (!categoria) {
            return res.status(400).json({ error: 'El campo "categoria" es obligatorio' });
        }

        const nuevaCategoria = await Categoria.create({ categoria });
        res.status(201).json(nuevaCategoria);
    } catch (error) {
        console.error('Error al crear la categoría:', error);
        res.status(500).json({ error: 'Error interno del servidor' });
    }
});

module.exports = router;
