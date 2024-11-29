# Firstboot

Firstboot is a client/server program to configure Debian virtual machine templates into unique systems. 

## Overview

When preparing a virtual machine template, firstboot-sys-client is installed into the template. When the template is cloned and run for the first time, firstboot-sys-client connects to the configured server. On the server you manually enter the following:

Hostname, Static IP Address, Gateway, New User Info, an SSH Key, whether to allow passwordless sudo access, and to enable or disable root. 

firstboot-sys-client takes these settings, configures them on the new clone, disables itself and restarts the clone, resulting in a unique Debian instance. 

For security, firstboot creates an SSH tunnel between the server and client for data transfer. 

## Installation

### Setup Server

Setup a server, with an SSH server, and a static IP address. Download the firstboot-server script. The script will be run manually from the command line when you are bringing new clones online. 


### Setup Client Template

Install Debian to a virtual machine. Configure the system to your liking. I reccomend not creating a regular user and enabling root. Firstboot will create a priviledged user, and allow for disabling root. 

Create SSH Key, default options will be fine

`# ssh-keygen`

Copy ssh key to firstboot server

`# ssh-copy-id user@firstboot-server-ip`

Install Dependacies

`# apt-get install python3-sshtunnel`

Download and expand firstboot

`# wget ...`

`# tar -xzvf firstboot.tar.gz`

`# cd firstboot`

Edit settings in firstboot.conf

`# nano firstboot.conf`

Set the server ip, username used with "ssh-copy-id", and ensure the ssh private key is the once created with "ssh-keygen"

Run install-client.sh

`# ./install-client.sh`

Shutdown the client and convert it to a template. 

`# shutdown now`

## Running Firstboot

On server move to firstboot directory and run firstboot-server

`# ./firstboot-server`

Clone your template, and start the clone. 





