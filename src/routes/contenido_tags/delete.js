const express = require('express');
const router = express.Router();
const { Contenido, Tag } = require('../../models');

// DELETE /contenido_tags
router.delete('/', async (req, res) => {
    try {
        const { contenidoID, tagID } = req.body;

        const contenido = await Contenido.findByPk(contenidoID);
        const tag = await Tag.findByPk(tagID);

        if (!contenido || !tag) {
            return res.status(404).json({ error: 'Contenido o tag no encontrado' });
        }

        await contenido.removeTag(tag);

        res.json({ mensaje: 'Relación eliminada correctamente' });
    } catch (error) {
        console.error('Error al eliminar relación:', error);
        res.status(500).json({ error: 'Error al eliminar relación' });
    }
});

module.exports = router;
