# Pritunl Fake API - Standalone Dockerfile
# This Dockerfile does what the docker-compose.yml does, but as a single buildable image
#
# Build from the root of the repository:
#   docker build -f docker/api-only/Dockerfile -t pritunl-fake-api .
#
# Run the container:
#   docker run -d -p 80:8080 pritunl-fake-api

FROM trafex/php-nginx:latest

# Copy the application files
COPY www/ /var/www/html/

# Copy the custom nginx configuration
COPY docker/api-only/conf.d/pritunl-fake-api.conf /etc/nginx/conf.d/pritunl-fake-api.conf

# The base image already exposes port 8080 and has the correct CMD
# No need to specify EXPOSE or CMD as they're inherited from the base image
