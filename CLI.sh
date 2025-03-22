#!/bin/bash

RED='\033[0;31m'
GREEN='\033[0;32m'
CYAN='\033[0;36m'
YELLOW='\033[0;33m'
NC='\033[0m'

echo -e '\e[34m'
echo -e 'SADI '
echo -e '\e[0m'
echo -e "Join our Telegram channel: https://t.me/Earnpoint10"
sleep 5

echo -e "🚀 Starting setup process..."
rm -rf $HOME/light-node
echo -e "🔗 Cloning repository..."
git clone https://github.com/Layer-Edge/light-node.git && echo -e "✅ Repository cloned!"
cd light-node
echo -e "📥 Downloading and installing dependencies..."
curl -L https://risczero.com/install | bash && echo -e "✅ Dependencies installed!"
source "/root/.bashrc"
echo -e "🔄 Applying environment variables..."
GRPC_URL=grpc.testnet.layeredge.io:9090
CONTRACT_ADDR=cosmos1ufs3tlq4umljk0qfe8k5ya0x6hpavn897u2cnf9k0en9jr7qarqqt56709
ZK_PROVER_URL=http://127.0.0.1:3001
API_REQUEST_TIMEOUT=100
POINTS_API=http://127.0.0.1:8080
echo -e "🔑 Please enter your private key: "
read PRIVATE_KEY
echo -e "✅ Private key set!"
export PRIVATE_KEY

echo -e "🛠️ Building and running risc0-merkle-service..."
cd risc0-merkle-service
cargo build && screen -dmS risc0-service cargo run && echo -e "🚀 risc0-merkle-service is running in a screen session!"

echo -e "🖥️ Starting light-node server in a screen session..."

echo -e "🎉 Setup complete! risc0 servers are running independently in screen sessions!"
echo -e "run your ligh-node now!"
