const express = require('express');
const router = express.Router();
const { Contenido } = require('../../models');

// GET /contenido_tags
router.get('/', async (req, res) => {
    try {
        const contenidos = await Contenido.findAll({
            include: {
                association: 'tags', // alias definido en el modelo Contenido
                through: { attributes: [] } // no mostrar la tabla intermedia
            }
        });

        res.json(contenidos);
    } catch (error) {
        console.error('Error al obtener contenido_tags:', error);
        res.status(500).json({ error: 'Error al obtener contenido_tags' });
    }
});

module.exports = router;
