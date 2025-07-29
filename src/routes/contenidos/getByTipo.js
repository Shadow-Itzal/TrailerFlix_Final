const express = require('express');
const router = express.Router();
const { Contenido, Categoria, Genero, Tag, Actor } = require('../../models');
const { Op } = require('sequelize');

// GET /contenidos/tipo/:tipo
router.get('/tipo/:tipo', async (req, res) => {
    try {
        const { tipo } = req.params;

        let categoriaId;
        if (tipo.toLowerCase() === 'pelicula') {
            categoriaId = 1;  // Asumiendo que el ID de las pelicula es 1
        } else if (tipo.toLowerCase() === 'serie') {
            categoriaId = 2;  // Asumiendo que el ID de las serie es 2
        } else {
            return res.status(400).json({ error: 'Tipo inválido. Usa "serie" o "pelicula".' });
        }

        const contenidos = await Contenido.findAll({
            where: {
                categoriaID: categoriaId
            },
            include: [
                { model: Actor, as: 'actores', through: { attributes: [] } },
                { model: Categoria, as: 'categoria' },
                { model: Genero, as: 'genero' },
                { model: Tag, as: 'tags', through: { attributes: [] } }
            ]
        });

        if (!contenidos.length) {
            return res.status(404).json({ error: `No se encontraron ${tipo}s` });
        }

        res.json(contenidos);
    } catch (error) {
        console.error('Error al buscar contenido por tipo:', error);
        res.status(500).json({ error: 'Error interno del servidor' });
    }
});

module.exports = router;
