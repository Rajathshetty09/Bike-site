# Use the official lightweight Nginx image
FROM nginx:alpine

# Copy all the static website files into the Nginx public folder
COPY . /usr/share/nginx/html/

# Expose port 80 to allow traffic to the web server
EXPOSE 80

# Start Nginx when the container launches
CMD ["nginx", "-g", "daemon off;"]
