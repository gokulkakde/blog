# Use the official PHP image with Apache
FROM php:8.2-apache

# Copy the current folder (your project) to the Apache web folder
COPY . /var/www/html/

# Install necessary PHP extensions (like MySQLi)
RUN docker-php-ext-install mysqli

# Enable Apache mod_rewrite (important for SEO-friendly URLs)
RUN a2enmod rewrite
