# Use an official Alpine Linux image as a parent image
FROM alpine:latest

# Update package repositories and install Nginx
RUN apk update && apk add nginx

# Remove the default Nginx configuration file
RUN rm -f /etc/nginx/nginx.conf

# Copy a custom Nginx configuration file to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Expose port 80 for HTTP
EXPOSE 80

# Start the Nginx server in the foreground
CMD ["nginx", "-g", "daemon off;"]
