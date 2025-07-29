const express = require('express');
const router = express.Router();
const { Tag } = require('../../models');

// GET /tags/:id
router.get('/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const tag = await Tag.findByPk(id);

        if (!tag) {
            res.status(404).json({ error: 'Tag no encontrado' });
        }

        res.json(tag);
    } catch (error) {
        console.error('Error al obtener el tag por ID:', error);
        res.status(500).json({ error: 'Error al obtener el tag' });
    }
});

module.exports = router;