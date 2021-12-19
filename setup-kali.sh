# Kali Desktop Environment Setup 

#!/bin/bash

pwd

mkdir Tools && mkdir Themes

cd Tools

# Dependencies 

sudo apt clean && sudo apt update & sudo apt upgrade

sudo apt-get install aptitude && sudo aptitude install libssl-dev bc

sudo apt-get install neofetch build-essential libssl-dev libffi-dev python-dev

sudo apt-get install python3-venv

sudo apt install python3-pip

# Fix Kali update && upgrade slow issue

git clone https://github.com/Ethical-Hacking-Tools/mirrorscript-v2

cd mirrorscript-v2

python3 mirrorscript-v2.py -h && python3 mirrorscript-v2.py -v -https -src

cd ..

# Phoneinfoga

curl -sSL https://raw.githubusercontent.com/sundowndev/phoneinfoga/master/support/scripts/install | bash

sudo mv ./phoneinfoga /usr/bin/phoneinfoga

phoneinfoga version

# Scylla

git clone https://github.com/Ethical-Hacking-Tools/Scylla

cd Scylla

sudo python3 -m pip install -r requirments.txt && python3 scylla.py --help

cd ..

# Seeker 

git clone https://github.com/Ethical-Hacking-Tools/seeker

cd seeker

sudo apt update && sudo apt install python3-pip php

pip3 install requests

cd ..

# Storm-Breaker

git clone https://github.com/Ethical-Hacking-Tools/Storm-Breaker

cd Storm-Breaker

sudo bash linux-installer.sh

sudo python3 -m pip install -r requirments.txt

sudo python3 Storm-Breaker.py

cd ..

# Sherlock

git clone https://github.com/Ethical-Hacking-Tools/sherlock sherlock

cd sherlock

sudo python3 -m pip install -r requirements.txt

python3 sherlock --help

cd ..

# Osintgram

git clone https://github.com/Ethical-Hacking-Tools/Osintgram

cd Osintgram

sudo python3 -m venv venv

sudo pip install -r requirements.txt

cd ..

# David-Bombal Script's 

git clone https://github.com/Ethical-Hacking-Tools/red-python-scripts

# NextFill

git clone https://github.com/thewhiteh4t/nexfil.git

cd nexfil

sudo pip3 install -r requirements.txt

python3 nexfil.py -h

cd ../../

## GRUB THEME ##

cd Themes 

git clone https://github.com/vandalsoul/dedsec-grub2-theme.git

cd dedsec-grub2-theme

sudo python3 install.py

cd ../../

####
####
####
####
####
#### Some NOTES/INSTRUCTIONS
####
#### Download Full Font : http://www.mediafire.com/file/on3q6yhfqzo4jh1/Fonts.zip/file
####
#### /etc/default/grub.d (Grub resolution and theme fix) (after updating grub :- sudo update-grub)
####
#### Fix some permission issue
#### sudo chown -R username: /home/username (eg: sudo chown -R kali: /home/kali) (This will fix permission issue on home directory after doing ./clone)
#### chsh -s /bin/bash (this is to change zsh to bash) 
#### 
####
####
####