import { writeFileSync } from 'fs';

// Get available targets
const res = await fetch('http://127.0.0.1:18800/json/list');
const targets = await res.json();
const pageTarget = targets.find(t => t.type === 'page');

if (!pageTarget) {
  // Open a new page
  const newRes = await fetch('http://127.0.0.1:18800/json/new?http://jason:jayc2026@localhost:8080/meridian-demo.html');
  const newTarget = await newRes.json();
  console.log('Opened new page:', newTarget.id);
  await new Promise(r => setTimeout(r, 3000));
}

// Use the screenshot endpoint - actually let's just use AppleScript to screenshot
// Simpler approach: save full-page screenshots via the existing browser
console.log('Available targets:');
for (const t of targets) {
  console.log(`  ${t.type}: ${t.url} (${t.id})`);
}
