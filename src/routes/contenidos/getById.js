// /src/routes/contenidos/getById.js
const express = require('express');
const router = express.Router();
const { Contenido, Categoria, Genero, Tag, Actor } = require('../../models');

// GET /contenidos/:id
router.get('/:id', async (req, res) => {
    const { id } = req.params;

    try {
        const contenido = await Contenido.findByPk(id, {
            include: [
                { model: Categoria, as: 'categoria' },
                { model: Genero, as: 'genero' },
                { model: Tag, as: 'tags', through: { attributes: [] } },
                { model: Actor, as: 'actores', through: { attributes: [] } }
            ]
        });

        if (!contenido) {
            return res.status(404).json({ error: 'Contenido no encontrado' });
        }

        res.json(contenido);
    } catch (error) {
        console.error('Error al buscar el contenido:', error);
        res.status(500).json({ error: 'Error al buscar el contenido' });
    }
});

module.exports = router;
