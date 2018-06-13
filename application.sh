#!/bin/bash

#sudo echo "nameserver 8.8.8.8" > /etc/resolv.conf
#sudo echo "nameserver 8.8.4.4" >> /etc/resolv.conf

sudo yum -y update
sudo yum -y install ruby

sudo gem install sinatra

cat << EOF > config.ru
require './helloworld'
run Sinatra::Application
EOF

cat << EOF > Gemfile
source 'http://rubygems.org'
gem 'sinatra'
EOF

cat << EOF > helloworld.rb
!/usr/bin/env ruby
require 'sinatra'
get '/' do
  "Hello World!"
end
EOF

sudo chmod +x helloworld.rb

helloworld.rb &

