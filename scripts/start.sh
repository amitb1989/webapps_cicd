#!/bin/bash
cd /home/webapp
nohup python3 app.py > app.log 2>&1 &
