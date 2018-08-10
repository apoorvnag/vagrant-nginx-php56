# Install PHP5.6
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt-get install php5.6-fpm

# Install Nginx
sudo apt-get update
sudo apt-get install nginx

# Install Git
sudo add-apt-repository ppa:git-core/ppa
sudo apt-get update
sudo apt install git

# Install Composer
# curl in order to download Composer
# php-cli for installing
# The php-mbstring package is necessary to provide functions for a library we'll be using
# git is used by Composer for downloading project dependencies
# unzip for extracting zipped packages
sudo apt-get update
sudo apt-get install curl php-cli php-mbstring git unzip
cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer