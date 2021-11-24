#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
sudo apt-get install ruby-full build-essential -y
sudo apt-get install rubygems -y
sudo gem install rails -y
sudo apt-get install libsqlite3-dev -y
sudo gem install sqlite3-ruby -y
sudo apt-get install nodejs npm -y
npm install --global yarn
sudo mkdir ruby
cd ruby
rails new testapp
cd testapp
rails server
