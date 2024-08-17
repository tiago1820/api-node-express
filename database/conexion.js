const mysql = require('mysql2');

const db = mysql.createConnection(
    {
        host: 'localhost',
        user: 'tiago',
        password: 'debian2024',
        database: 'cursos',
    }
);

db.connect((err) => {
    if(err) {
        throw err;
    }
    console.log('Base de datos conectada');
});

module.exports = db;