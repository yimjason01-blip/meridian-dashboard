const http = require('http');
const fs = require('fs');
const path = require('path');

const PORT = 8080;
const USER = 'jason';
const PASS = 'jayc2026';

const MIME = {
  '.html': 'text/html',
  '.css': 'text/css',
  '.js': 'application/javascript',
  '.json': 'application/json',
  '.png': 'image/png',
  '.jpg': 'image/jpeg',
  '.jpeg': 'image/jpeg',
  '.svg': 'image/svg+xml',
  '.ico': 'image/x-icon',
};

const server = http.createServer((req, res) => {
  // Basic auth check
  const auth = req.headers.authorization;
  if (!auth || !auth.startsWith('Basic ')) {
    res.writeHead(401, { 'WWW-Authenticate': 'Basic realm="Jay-C Dashboard"' });
    return res.end('Auth required');
  }
  const [u, p] = Buffer.from(auth.slice(6), 'base64').toString().split(':');
  if (u !== USER || p !== PASS) {
    res.writeHead(401, { 'WWW-Authenticate': 'Basic realm="Jay-C Dashboard"' });
    return res.end('Invalid credentials');
  }

  // Serve files
  let filePath = path.join(__dirname, req.url === '/' ? 'index.html' : req.url);
  const ext = path.extname(filePath);
  
  fs.readFile(filePath, (err, data) => {
    if (err) {
      res.writeHead(404);
      return res.end('Not found');
    }
    res.writeHead(200, { 'Content-Type': MIME[ext] || 'application/octet-stream' });
    res.end(data);
  });
});

server.listen(PORT, () => console.log(`Dashboard running on :${PORT} (auth enabled)`));
