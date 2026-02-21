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

  // Strip query strings from URL
  const urlPath = req.url.split('?')[0];
  let filePath = path.join(__dirname, urlPath === '/' ? 'index.html' : urlPath);
  const ext = path.extname(filePath);

  // PUT handler — save JSON files (ideas, etc.)
  if (req.method === 'PUT' && ext === '.json') {
    let body = '';
    req.on('data', chunk => body += chunk);
    req.on('end', () => {
      try {
        JSON.parse(body); // validate
        fs.writeFileSync(filePath, body);
        res.writeHead(200, { 'Content-Type': 'application/json' });
        res.end('{"ok":true}');
      } catch(e) {
        res.writeHead(400);
        res.end('Invalid JSON');
      }
    });
    return;
  }

  // API: Status
  if (urlPath === '/api/status') {
    const configPath = path.join(__dirname, '../../openclaw.json');
    let model = 'Unknown';
    try {
      const config = JSON.parse(fs.readFileSync(configPath, 'utf8'));
      model = config.agents?.defaults?.model?.primary || 'Unknown';
    } catch (e) {}

    const memoryDir = path.join(__dirname, '../memory');
    let memoryFiles = [];
    try {
      memoryFiles = fs.readdirSync(memoryDir)
        .filter(f => f.endsWith('.md'))
        .map(f => {
          const stats = fs.statSync(path.join(memoryDir, f));
          return { name: f, size: stats.size, mtime: stats.mtime };
        });
    } catch (e) {}

    // Add root memory files
    ['MEMORY.md', 'SOUL.md', 'IDENTITY.md', 'USER.md', 'AGENTS.md'].forEach(f => {
      try {
        const p = path.join(__dirname, '..', f);
        if (fs.existsSync(p)) {
           const stats = fs.statSync(p);
           memoryFiles.push({ name: f, size: stats.size, mtime: stats.mtime, isRoot: true });
        }
      } catch(e) {}
    });

    const data = {
      uptime: process.uptime(),
      model: model,
      memoryFiles: memoryFiles.sort((a,b) => b.mtime - a.mtime), // Newest first
      lastUpdate: new Date().toISOString()
    };
    
    res.writeHead(200, { 'Content-Type': 'application/json' });
    return res.end(JSON.stringify(data));
  }

  // Serve files
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
