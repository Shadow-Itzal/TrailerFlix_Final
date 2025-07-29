const express = require('express');
const router = express.Router();
const { Genero } = require('../../models');

// PUT /generos/:id
router.put('/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const { genero } = req.body;

        const generoExistente = await Genero.findByPk(id);

        if (!generoExistente) {
            return res.status(404).json({ error: 'Género no encontrado' });
        }

        generoExistente.genero = genero || generoExistente.genero;
        await generoExistente.save();

        res.json(generoExistente);
    } catch (error) {
        console.error('Error al actualizar el género:', error);
        res.status(500).json({ error: 'Error al actualizar el género' });
    }
});

module.exports = router;