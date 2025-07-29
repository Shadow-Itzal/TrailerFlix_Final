// /src/routes/contenidos/delete.js
const express = require('express');
const router = express.Router();
const { Contenido } = require('../../models');

// DELETE /contenidos/:id
router.delete('/:id', async (req, res) => {
    try {
        const { id } = req.params;

        const contenido = await Contenido.findByPk(id);

        if (!contenido) {
            return res.status(404).json({ error: 'Contenido no encontrado' });
        }

        await contenido.destroy();

        res.json({ mensaje: 'Contenido eliminado correctamente' });
    } catch (error) {
        console.error('Error al eliminar contenido:', error);
        res.status(500).json({ error: 'Error al eliminar contenido' });
    }
});

module.exports = router;
