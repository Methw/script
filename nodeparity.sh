#!/bin/bash
#Installing dependency
apt-get install build-essential openssl libssl-dev libudev-dev gcc libudev-dev pkg-config -y

#Build and install rust
curl https://sh.rustup.rs -sSf | sh -s -- -y
source $HOME/.cargo/env


#Clone Build Rust-Callisto
git clone -b CLO/1.0 https://github.com/EthereumCommonwealth/rust-callisto.git
cd rust-callisto && cargo build --release

sudo cp ~/rust-callisto/target/release/parity /usr/local/bin/

echo "parity --chain=galilei --no-ui --no-ws --no-dapps --jsonrpc-apis safe,web3 --tracing=on --fat-db=on --pruning=archive --public-node  --jsonrpc-cors '*' --jsonrpc-hosts all --jsonrpc-interface all" > ~/startparity.sh
chmod +x ~/startparity.sh
echo "To run Parity you can change file startparity.sh"
