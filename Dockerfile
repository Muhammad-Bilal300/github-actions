# Use the official Nginx image from the Docker Hub
FROM nginx:stable

# Remove the default Nginx HTML files
RUN rm -rf /usr/share/nginx/html/*

# Copy the built application files to the Nginx html directory
COPY ./build /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx server
CMD ["nginx", "-g", "daemon off;"]
