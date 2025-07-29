// src/routes/contenido_actores/delete.js
const express = require('express');
const router = express.Router();
const { Contenido, Actor } = require('../../models');

// DELETE /contenido_actores
router.delete('/', async (req, res) => {
    try {
        const { contenidoID, actorID } = req.body;

    // Validamos existencia de contenido y actor
        const contenido = await Contenido.findByPk(contenidoID);
        const actor = await Actor.findByPk(actorID);

        if (!contenido || !actor) {
            return res.status(404).json({ error: 'Contenido o actor no encontrado' });
        }

    // Remover la asociación
        await contenido.removeActor(actor);

        res.json({ mensaje: 'Relación eliminada correctamente' });
    } catch (error) {
        console.error('Error al eliminar relación:', error);
        res.status(500).json({ error: 'Error al eliminar relación' });
    }
});

module.exports = router;


// Que hace esto?
// Va a permitir eliminar la relación entre un contenido y un actor (es decir, quitar un actor de una película o serie).