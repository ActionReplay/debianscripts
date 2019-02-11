#!/bin/bash
#Install UFW for iptables
apt install ufw && 
ufw default deny incoming %% ufw default allow outgoing
#write new UFW config file
apt install git
git clone https://github.com/ActionReplay/debianscripts.git && sleep 3
ufw disable && cat debianscripts/config > /etc/ufw/before.rules &&
sleep 5 && ufw enable && ufw start && ufw status verbose
