const express = require('express');
const router = express.Router();
const { Tag } = require('../../models');

// PUT /tags/:id
router.put('/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const { tag } = req.body;

        const tagExistente = await Tag.findByPk(id);

        if (!tagExistente) {
            return res.status(404).json({ error: 'Tag no encontrado' });
        }

        tagExistente.tag = tag || tagExistente.tag;
        await tagExistente.save();

        res.json(tagExistente);
    } catch (error) {
        console.error('Error al actualizar el tag:', error);
        res.status(500).json({ error: 'Error al actualizar el tag' });
    }
});

module.exports = router;