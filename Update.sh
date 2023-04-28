#!/bin/bash

if [ "$1" = "-auto" ]; then
  while true; do
    sudo git pull https://github.com/MCmoderSD/MineKampf.de.git
    sudo rm -r /etc/apache2/sites-enabled/minekampf.de.conf 
    ln /var/www/minekampf.de/minekampf.de.conf /etc/apache2/sites-enabled/minekampf.de.conf
    sudo systemctl reload apache2
    sleep 30
  done
else
  sudo git pull https://github.com/MCmoderSD/MineKampf.de.git
  sudo rm -r /etc/apache2/sites-enabled/minekampf.de.conf 
  ln /var/www/minekampf.de/minekampf.de.conf /etc/apache2/sites-enabled/minekampf.de.conf
  sudo systemctl reload apache2
fi