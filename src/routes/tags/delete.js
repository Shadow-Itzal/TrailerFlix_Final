const express = require('express');
const router = express.Router();
const { Tag } = require('../../models');

// DELETE /tags/:id
router.delete('/:id', async (req, res) => {
    try {
        const { id } = req.params;

        const tag = await Tag.findByPk(id);

        if (!tag) {
            return res.status(404).json({ error: 'Tag no encontrado' });
        }

        await tag.destroy();
        res.json({ mensaje: 'Tag eliminado correctamente' });
    } catch (error) {
        console.error('Error al eliminar el tag:', error);
        res.status(500).json({ error: 'Error al eliminar el tag' });
    }
});

module.exports = router;