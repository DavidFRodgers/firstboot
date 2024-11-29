#Firstboot

Firstboot is a client/server program to configure Debian virtual machine templates into unique systems. 

##Overview

When preparing a virtual machine template, firstboot-sys-client is installed into the template. When the template is cloned and run for the first time, firstboot-sys-client connects to the configured server. On the server you manually enter the following:

Hostname, Static IP Address, Gateway, New User Info, an SSH Key, whether to allow passwordless sudo access, and to enable or disable root. 

firstboot-sys-client takes these settings, configures them on the new clone, disables itself and restarts the clone, resulting in a unique Debian instance. 

For security, firstboot creates an SSH tunnel between the server and client for data transfer. 

##Installation

###Setup Server

Setup a server, with an SSH server, and a static IP address. Download the firstboot-server script. The script will be run manually from the command line when you are bringing new clones online. 


###Setup Client Template

Install Debian to a virtual machine. Configure the system to your liking. 