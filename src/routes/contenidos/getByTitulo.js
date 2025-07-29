const express = require('express');
const router = express.Router();
const { Contenido } = require('../../models');
const { Op, fn, col, where, literal } = require('sequelize');

// GET /contenidos/titulo/:titulo
router.get('/titulo/:titulo', async (req, res) => {
    try {
        const { titulo } = req.params;

        const resultados = await Contenido.findAll({
            where: where(
            fn('LOWER', col('titulo')),
            {
                [Op.like]: `%${titulo.toLowerCase()}%`
            }
            )
        });

        if (!resultados.length) {
            return res.status(404).json({ error: 'No se encontraron contenidos con ese título' });
        }

        res.json(resultados);
    } catch (error) {
        console.error('Error al buscar por título:', error);
        res.status(500).json({ error: 'Error interno del servidor' });
    }
});

module.exports = router;

// Que hace esto?
// * Convierte el campo titulo de la base a minúsculas.
// * Convierte lo que buscás (titulo) a minúsculas también.
// * Luego los compara con %LIKE%, o sea, coincidencia parcial sin importar mayúsculas.