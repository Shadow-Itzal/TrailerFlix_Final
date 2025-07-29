const express = require('express');
const router = express.Router();
const { Genero } = require('../../models');

// GET /generos/:id
router.get('/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const genero = await Genero.findByPk(id);

        if (!genero) {
            return res.status(404).json({ error: 'Género no encontrado' });
        }

        res.json(genero);
    } catch (error) {
        console.error('Error al obtener el género por ID:', error);
        res.status(500).json({ error: 'Error al obtener el género' });
    }
});

module.exports = router;
