#!/bin/bash
cd /var/www/pythonapp
nohup python3 app.py > app.log 2>&1 &