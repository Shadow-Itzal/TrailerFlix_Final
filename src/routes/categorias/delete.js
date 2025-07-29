const express = require('express');
const router = express.Router();
const { Categoria } = require('../../models');

// DELETE /categorias/:id
router.delete('/:id', async (req, res) => {
    const { id } = req.params;

    try {
        const categoria = await Categoria.findByPk(id);

        if (!categoria) {
            return res.status(404).json({ error: 'Categoría no encontrada' });
        }

        await categoria.destroy();

        res.json({ mensaje: 'Categoría eliminada correctamente' });
    } catch (error) {
        console.error('Error al eliminar la categoría:', error);
        res.status(500).json({ error: 'Error al eliminar la categoría' });
    }
});

module.exports = router;
