#!/bin/bash

if [ $(id -u) -ne 0 ]
  then echo Please run this script as root or using sudo
  exit
fi

cp ./firstboot-sys-client /usr/local/bin/
cp ./firstboot.service /etc/systemd/system/
cp ./firstboot.conf /etc/

systemctl daemon-reload
systemctl enable firstboot.service

echo Firstboot is now enabled. The next time this system is shutdown it should be converted to a template. 
