# Use the devopsedu/webapp as the base image
FROM devopsedu/webapp

# Set the working directory in the container
WORKDIR /tmp/www/html

# Install git to clone the repository
RUN apt-get update && apt-get install -y git

# Clone the PHP application repository into the working directory
RUN git clone https://github.com/Mdsltn/Project_dev.git .

# Optional: Remove the .git folder to clean up the container
RUN rm -rf .git

# Expose port 80 to make the app accessible
EXPOSE 80

# Start the Apache server
CMD ["apachectl", "-D", "FOREGROUND"]
