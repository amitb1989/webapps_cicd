#!/bin/bash

echo "Stopping existing application..."
pkill -f app.py || true

echo "Cleaning old deployment..."
rm -rf /home/webapp/*
mkdir -p /home/webapp