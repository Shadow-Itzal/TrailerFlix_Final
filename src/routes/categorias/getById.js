const express = require('express');
const router = express.Router();
const { Categoria } = require('../../models');

// GET /categorias/:id
router.get('/:id', async (req, res) => {
    try {
        const { id } = req.params;
        const categoria = await Categoria.findByPk(id); // Sequelize automáticamente sabe que debe buscar en la columna categoriaID, porque es la primary key que se detallo en models.

        if (!categoria) {
            return res.status(404).json({ error: 'Categoría no encontrada' });
        }

        res.json(categoria);
    } catch (error) {
        console.error('Error al buscar la categoría:', error);
        res.status(500).json({ error: 'Error interno del servidor' });
    }
});

module.exports = router;
