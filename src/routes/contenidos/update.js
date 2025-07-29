// /src/routes/contenidos/update.js
const express = require('express');
const router = express.Router();
const { Contenido } = require('../../models');

// PUT /contenidos/:id
router.put('/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const {
            poster,
            titulo,
            categoriaID,
            generoID,
            resumen,
            temporadas,
            trailer,
            duracion
        } = req.body;

        const contenido = await Contenido.findByPk(id);

        if (!contenido) {
            return res.status(404).json({ error: 'Contenido no encontrado' });
        }

        await contenido.update({
            poster,
            titulo,
            categoriaID,
            generoID,
            resumen,
            temporadas,
            trailer,
            duracion
        });

        res.json({ mensaje: 'Contenido actualizado correctamente', contenido });
    } catch (error) {
        console.error('Error al actualizar contenido:', error);
        res.status(500).json({ error: 'Error al actualizar contenido' });
    }
});

module.exports = router;
