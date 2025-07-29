// src/routes/actores/delete.js
const express = require('express');
const router = express.Router();
const { Actor } = require('../../models');

// DELETE /actores/:id
router.delete('/:id', async (req, res) => {
    try {
        const { id } = req.params;

        const actor = await Actor.findByPk(id);

        if (!actor) {
            return res.status(404).json({ error: 'Actor no encontrado.' });
        }

        await actor.destroy();
        res.json({ mensaje: 'Actor eliminado correctamente.' });
    } catch (error) {
        console.error('Error al eliminar el actor:', error);
        res.status(500).json({ error: 'Error al eliminar el actor' });
    }
});

module.exports = router;
