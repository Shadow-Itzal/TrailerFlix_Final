// src/routes/actores/update.js
const express = require('express');
const router = express.Router();
const { Actor } = require('../../models');

// PUT /actores/:id
router.put('/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const { nombreCompleto } = req.body;

        const actor = await Actor.findByPk(id);

        if (!actor) {
            return res.status(404).json({ error: 'Actor no encontrado.' });
        }

        actor.nombreCompleto = nombreCompleto || actor.nombreCompleto;
        await actor.save();

        res.json(actor);
    } catch (error) {
        console.error('Error al actualizar el actor:', error);
        res.status(500).json({ error: 'Error al actualizar el actor' });
    }
});

module.exports = router;
