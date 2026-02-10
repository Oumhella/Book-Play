# Use official PHP 8 image with Apache
FROM php:8.2-apache

# Enable Apache rewrite module (for MVC routing)
RUN a2enmod rewrite

# Copy app files into the container
COPY . /var/www/html/

# Set working directory
WORKDIR /var/www/html

# Set permissions
RUN chown -R www-data:www-data /var/www/html

# Expose the port Render uses
EXPOSE 10000

# Tell Apache to listen on Render’s port
CMD ["apache2-foreground"]
