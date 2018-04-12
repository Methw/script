#!/bin/bash

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get install make gcc musl-dev git build-essential -y
sudo curl -O https://storage.googleapis.com/golang/go1.10.1.linux-amd64.tar.gz
sudo tar -xvf go1.10.1.linux-amd64.tar.gz
sudo mv go /usr/local
echo "export PATH=$PATH:/usr/local/go/bin" >> ~/.profile

source ~/.profile
go version

git clone -b CLO/1.0 https://github.com/EthereumCommonwealth/go-callisto.git
cd go-callisto && make geth

cp ~/go-callisto/build/bin/* /usr/local/bin/

echo "Run just type : geth"
