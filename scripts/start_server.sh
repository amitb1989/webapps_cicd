#!/bin/bash
set -eux
cat > /etc/systemd/system/webapp.service << 'UNIT'
[Unit]
Description=CodeDeploy Flask WebApp
After=network.target

[Service]
User=root
ExecStart=/usr/bin/python3 /opt/webapp/app.py
Restart=always

[Install]
WantedBy=multi-user.target
UNIT

systemctl daemon-reload
systemctl enable webapp
systemctl restart webapp
