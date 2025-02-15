const express = require('express');
const { Pool } = require('pg');

const app = express();
const pool = new Pool({
  host: 'postgres',
  user: 'postgres',
  password: 'password',
  database: 'votes',
});

app.get('/votes', async (req, res) => {
  const { rows } = await pool.query('SELECT option, COUNT(*) as votes FROM votes GROUP BY option');
  res.json(rows);
});

app.listen(3000, () => {
  console.log('Backend server running on port 3000');
});