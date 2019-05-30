#!/bin/bash
### Provision Vagrant ###
printf "Checking for updates....\n";
cd /var/data;
sudo apt-get update;
sudo apt-get install -f -y python-minimal build-essential python-setuptools curl git wget python-dev gcc xvfb fontconfig fontconfig-config fonts-dejavu-core libfontconfig1 libjpeg-turbo8 libxrender1 xfonts-75dpi;
cd ~;
wget https://downloads.wkhtmltopdf.org/0.12/0.12.5/wkhtmltox_0.12.5-1.xenial_amd64.deb;
sudo dpkg -i wkhtmltox_0.12.5-1.xenial_amd64.deb;
wget https://raw.githubusercontent.com/frappe/bench/master/playbooks/install.py;
sudo python install.py --develop --mysql-root-password root --admin-password root;