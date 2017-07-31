[ -f /data/options.json ] && cp /data/options.json /app/settings.json || echo "{}" > /app/settings.json
cd /app
npm start