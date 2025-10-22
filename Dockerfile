# Step 1: Use the official Nginx image
FROM nginx:latest

# Step 2: Copy your HTML file into the Nginx default directory
COPY index.html /usr/share/nginx/html/index.html

# Step 3: Expose port 80 so the container can serve traffic
EXPOSE 80

# Step 4: Start Nginx (this runs automatically in the base image)
CMD ["nginx", "-g", "daemon off;"]
