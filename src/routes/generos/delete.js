const express = require('express');
const router = express.Router();
const { Genero } = require('../../models');

// DELETE /generos/:id
router.delete('/:id', async (req, res) => {
    try {
        const { id } = req.params;

        const genero = await Genero.findByPk(id);

        if (!genero) {
            return res.status(404).json({ error: 'Género no encontrado' });
        }

        await genero.destroy();
        res.json({ mensaje: 'Género eliminado correctamente' });
    } catch (error) {
        console.error('Error al eliminar el género:', error);
        res.status(500).json({ error: 'Error al eliminar el género' });
    }
});

module.exports = router;