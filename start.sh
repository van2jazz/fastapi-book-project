#!/bin/bash

# Start FastAPI in the background
web: uvicorn main:app --host 0.0.0.0 --port $PORT &

# Start Nginx in the foreground
nginx -c /nginx.conf
