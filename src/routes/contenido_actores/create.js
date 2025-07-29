// src/routes/contenido_actores/create.js
const express = require('express');
const router = express.Router();
const { Contenido, Actor } = require('../../models');

// POST /contenido_actores
router.post('/', async (req, res) => {
    try {
        const { contenidoID, actorID } = req.body;

    // Validamos existencia de contenido y actor
        const contenido = await Contenido.findByPk(contenidoID);
        const actor = await Actor.findByPk(actorID);

        if (!contenido || !actor) {
            return res.status(404).json({ error: 'Contenido o actor no encontrado' });
        }

    // Asociamos el actor al contenido
        await contenido.addActor(actor);

        res.status(201).json({ mensaje: 'Actor asociado al contenido exitosamente' });
    } catch (error) {
        console.error('Error al asociar actor al contenido:', error);
        res.status(500).json({ error: 'Error al asociar actor al contenido' });
    }
});

module.exports = router;


// Que hace esto?
// Crear una relación entre un contenido y un actor, es decir, agregar un actor a un contenido (película o serie).