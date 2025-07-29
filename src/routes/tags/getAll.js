const express = require('express');
const router = express.Router();
const { Tag } = require('../../models');

// GET /tags
router.get('/', async (req, res) => {
    try {
        const tags = await Tag.findAll();
        res.json(tags);
    } catch (error) {
        console.error('Error al obtener los tags:', error);
        res.status(500).json({ error: 'Error al obtener los tags' });
    }
});

module.exports = router;