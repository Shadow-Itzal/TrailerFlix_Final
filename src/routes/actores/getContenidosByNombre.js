const express = require('express');
const router = express.Router();
const { Actor, Contenido } = require('../../models');
const { Op, fn, col, where } = require('sequelize'); 

// GET /actores/contenidos/:nombre
router.get('/contenidos/:nombre', async (req, res) => {
    try {
        const { nombre } = req.params;

        const actores = await Actor.findAll({
            where: where(
            fn('LOWER', col('nombreCompleto')),
            {
                [Op.like]: `%${nombre.toLowerCase()}%`
            }
            ),
            include: {
                model: Contenido,
                as: 'contenidos',
                through: { attributes: [] } // evita mostrar la tabla intermedia
            }
        });

        if (!actores.length) {
            return res.status(404).json({ error: 'No se encontró ningún actor o actriz con ese nombre' });
        }

        res.json(actores);
    } catch (error) {
        console.error('Error al buscar contenidos por actor:', error);
        res.status(500).json({ error: 'Error interno del servidor' });
    }
});

module.exports = router;

// Que hace esto?
// * Convierte el campo nombreCompleto de la base a minúsculas.
// * Convierte lo que buscás (nombre) a minúsculas también.
// * Luego los compara con %LIKE%, o sea, coincidencia parcial sin importar mayúsculas.