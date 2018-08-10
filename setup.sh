###########################################
#
# Ubuntu 14.04.5 LTS (GNU/Linux 3.13.0-153-generic x86_64)
#
###########################################


# To fix no locale in Ubuntu
sudo apt-get install -y language-pack-en-base
sudo export LC_ALL=en_US.UTF-8
sudo export LANG=en_US.UTF-8
sudo apt-get install -y software-properties-common
sudo apt-get update


# Install Nginx
sudo apt-get update
sudo apt-get install nginx

# Install PHP5.6
sudo LC_ALL=C.UTF-8 add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo add-apt-repository ppa:ondrej/php
# sudo add-apt-repository ppa:ondrej/nginx-mainline
sudo apt-get update
sudo apt-get install php5.6-fpm

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
rm composer-setup.php


# Install Nodejs
sudo apt-get update
cd ~
curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
rm nodesource_setup.sh
sudo apt-get install nodejs
nodejs -v
npm -v
sudo apt-get install build-essential




