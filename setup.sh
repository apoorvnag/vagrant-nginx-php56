###########################################
#
# Ubuntu 14.04.5 LTS (GNU/Linux 3.13.0-153-generic x86_64)
#
###########################################


# To fix no locale in Ubuntu
sudo apt-get install -y language-pack-en-base
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
sudo apt-get install -y software-properties-common
sudo apt-get update

# Install PHP5.6
sudo LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php
# sudo add-apt-repository ppa:ondrej/php
# sudo add-apt-repository ppa:ondrej/nginx-mainline
sudo apt-get update
sudo apt-get install -y php5.6-fpm

# Install Nginx
sudo apt-get install -y nginx

# Install Git
sudo add-apt-repository -y ppa:git-core/ppa
sudo apt-get update
sudo apt-get install -y git

# Install Composer
# git and php are installed already
# curl to download Composer
# php5.6-mbstring package to provide functions for a library
# unzip to extract zipped packages
sudo apt-get install -y curl php5.6-mbstring unzip
cd ~
curl -sS https://getcomposer.org/installer -o composer-setup.php
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
rm composer-setup.php


# Install Nodejs
cd ~
curl -sL https://deb.nodesource.com/setup_8.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
rm nodesource_setup.sh
sudo apt-get install -y nodejs
nodejs -v
npm -v
sudo apt-get install -y build-essential

# Install Java 7
sudo apt-get -y upgrade
sudo apt-get install -y default-jdk

# Install Unzip
sudo apt-get install unzip

# Install ElasticSearch 2.3.0
cd /vagrant
wget https://download.elasticsearch.org/elasticsearch/release/org/elasticsearch/distribution/zip/elasticsearch/2.3.0/elasticsearch-2.3.0.zip
unzip elasticsearch-2.3.0.zip
rm elasticsearch-2.3.0.zip

# Write this line in elasticsearch.yml file to allow http://192.168.33.10:9200/
# network.host: 0.0.0.0
