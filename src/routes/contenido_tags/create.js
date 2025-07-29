const express = require('express');
const router = express.Router();
const { Contenido, Tag } = require('../../models');

// POST /contenido_tags
router.post('/', async (req, res) => {
    try {
        const { contenidoID, tagID } = req.body;

        const contenido = await Contenido.findByPk(contenidoID);
        const tag = await Tag.findByPk(tagID);

        if (!contenido || !tag) {
            return res.status(404).json({ error: 'Contenido o tag no encontrado' });
        }

        await contenido.addTag(tag);

        res.status(201).json({ mensaje: 'Relación creada con éxito' });
    } catch (error) {
        console.error('Error al crear relación:', error);
        res.status(500).json({ error: 'Error al crear relación' });
    }
});

module.exports = router;
