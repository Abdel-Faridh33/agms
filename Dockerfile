# Utilisez une image Apache avec PHP
FROM php:7.4-apache

# Copiez les fichiers de votre application dans le conteneur
COPY . /var/www/html

# Exposez le port HTTP
EXPOSE 80

# Installez les dépendances nécessaires
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Installez MySQL
RUN apt-get update && apt-get install -y default-mysql-client

# Installez phpMyAdmin
RUN apt-get install -y phpmyadmin

# Configurez phpMyAdmin pour se connecter à MySQL
RUN echo "Include /etc/phpmyadmin/apache.conf" >> /etc/apache2/apache2.conf

# Copiez le fichier agmsdb.sql dans le conteneur
COPY agmsdb.sql /docker-entrypoint-initdb.d/agmsdb.sql
