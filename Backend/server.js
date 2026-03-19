const express = require('express');
const app = express();

app.use(express.json());

app.listen(3000, () => {
  console.log('Servidor corriendo en puerto 3000');
});

const { Pool } = require('pg')
const pool = new Pool({
  user: 'postgres',
  password: 'J5894xs379.',
  host: 'localhost',
  port: 5432,
  database: 'postgres'
})

app.post('/categories', async (req, res) => {
  const { name } = req.body
  try {
    const result = await pool.query('INSERT INTO categories (name) VALUES ($1) RETURNING *', [name])
    res.json(result.rows[0])
  } catch (err) {
    console.error('Error inserting category:', err)
    res.status(500).send('Error al guardar la categoría')
  }
})
