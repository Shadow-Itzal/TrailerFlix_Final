// src/routes/actores/getById.js
const express = require('express');
const router = express.Router();
const { Actor } = require('../../models'); 

// GET /actores/:id
router.get('/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const actor = await Actor.findByPk(id);

        if (!actor) {
            return res.status(404).json({ error: 'Actor no encontrado' });
        }

        res.json(actor);
    } catch (error) {
        console.error('Error al obtener el actor:', error);
        res.status(500).json({ error: 'Error al obtener el actor' });
    }
});

module.exports = router;
