# Use official Nginx image
FROM nginx:alpine

# Remove default nginx static assets
RUN rm -rf /usr/share/nginx/html/*

# Copy project files to nginx html directory
COPY html/ /usr/share/nginx/html/
COPY css/ /usr/share/nginx/html/css/

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]