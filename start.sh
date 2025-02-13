#!/bin/bash

# Start FastAPI in the background
uvicorn main:app --host 0.0.0.0 --port 8000 &

# Start Nginx in the foreground
nginx -c /etc/nginx/nginx.conf
