# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory
WORKDIR /fastapi-book-project

# Install Nginx
RUN apt-get update && apt-get install -y nginx

# Copy the Nginx configuration file
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the application code
COPY . .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Make the start script executable
RUN chmod +x start.sh

# Expose the port
EXPOSE $PORT

# Start the application
CMD ["./start.sh"]
