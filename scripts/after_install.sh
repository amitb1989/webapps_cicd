#!/bin/bash
cd /var/www/myapp
npm install

systemctl daemon-reload
systemctl enable webapp
systemctl restart webapp
