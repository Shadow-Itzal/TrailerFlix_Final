const express = require('express');
const router = express.Router();
const { Tag } = require('../../models');

// POST /tags
router.post('/', async (req, res) => {
    try {
        const { tag } = req.body;

        if (!tag) {
            return res.status(400).json({ error: 'El campo "tag" es obligatorio.' });
        }

        const nuevoTag = await Tag.create({ tag });
        res.status(201).json(nuevoTag);
    } catch (error) {
        console.error('Error al crear el tag:', error);
        res.status(500).json({ error: 'Error al crear el tag' });
    }
});

module.exports = router;