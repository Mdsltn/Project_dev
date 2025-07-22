# Use PHP with Apache
FROM php:8.2-apache

# Enable Apache mod_rewrite if needed
RUN a2enmod rewrite

# Install PHP extensions (if needed, e.g., mysqli)
# RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copy all files from current directory to Apache root
COPY . /var/www/html/

# Expose the Apache port
EXPOSE 80
