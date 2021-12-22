#!/bin/sh

cp -r /cache/node_modules/. /app/node_modules/
pm2-runtime ecosystem.config.js --env production