const express = require('express');
const app = express();
const connection = require('./database-connection');

app.use(express.json());

// Endpoint para clonar dados de um banco de dados para outro
app.get('/usuarios', (req, res) => {
    connection.query('SELECT * FROM usuarios', (err, results) => {
        if (err) {
            res.status(500).send('Erro ao buscar usuários.');
        } else {
            res.json(results);
        }
    });
});

// Iniciar o servidor
const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Servidor rodando na porta ${PORT}`);
});