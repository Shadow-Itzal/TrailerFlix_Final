const express = require('express');
const router = express.Router();
const { Categoria } = require('../../models');

// PUT /categorias/:id
router.put('/:id', async (req, res) => {
    const { id } = req.params;
    const { categoria } = req.body;

    try {
        const categoriaExistente = await Categoria.findByPk(id);

        if (!categoriaExistente) {
            return res.status(404).json({ error: 'Categoría no encontrada' });
        }

        categoriaExistente.categoria = categoria;

        await categoriaExistente.save();

        res.json({ mensaje: 'Categoría actualizada correctamente', categoria: categoriaExistente });
    } catch (error) {
        console.error('Error al actualizar la categoría:', error);
        res.status(500).json({ error: 'Error al actualizar la categoría' });
    }
});

module.exports = router;
