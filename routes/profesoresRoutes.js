const express = require('express');
const router = express.Router();

router.get('/', (req, res) => {
    res.json({ msg: 'Consulta profesores' });
});

router.post('/', (req, res) => {
    res.json({ msg: 'Ingreso de profesores' });
});

router.route("/:id")
    .get((req, res) => {
        res.json({ msg: 'Consulta profesore' });
    })
    .put((req, res) => {
        res.json({ msg: 'Actualización de profesore' });
    })
    .delete((req, res) => {
        res.json({ msg: 'Borrado de profesore' });
    });

module.exports = router;