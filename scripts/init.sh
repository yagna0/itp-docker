#!/bin/sh

# Create necessary directories
mkdir -p volumes/config volumes/html
rm -rf volumes/config/* volumes/html/*  # Ensure html is cleared properly

# Run a temporary Nginx container
docker run --rm --name temp-nginx -d nginx:alpine3.21

# Copy configuration and HTML files from the container
docker cp temp-nginx:/etc/nginx/conf.d volumes/config
docker cp temp-nginx:/etc/nginx/nginx.conf volumes/config/nginx.conf
docker cp temp-nginx:/usr/share/nginx/html/. volumes/html/  # Copy contents only

# Stop the temporary container
docker stop temp-nginx

# Replace default files
cp templates/home.html volumes/html/index.html
cp templates/http.conf volumes/config/conf.d/default.conf

# Ensure php-info path exists
rm -rf volumes/html/php-info
cp -r templates/html-php-info-path volumes/html/php-info

exit 0
