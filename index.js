const http = require('http');
const { Client } = require('pg');

const PORT = process.env.PORT || 3000;

const client = new Client({
  host: process.env.DB_HOST || 'db',
  user: process.env.DB_USER || 'postgres',
  password: process.env.DB_PASSWORD || 'postgres',
  database: process.env.DB_NAME || 'mydb',
});

client.connect()
  .then(() => console.log('Connected to Postgres!'))
  .catch((err) => console.error('Connection error!', err));

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain; charset=utf-8' });
  res.end('this is node on docker, hello :D');
});

server.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});