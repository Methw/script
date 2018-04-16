sudo apt-get install apt-transport-https ca-certificates curl software-properties-common -y
sudo apt-key fingerprint 0EBFCD88
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce -y
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
cd go-callisto && make geth-windows-amd64
