#/bin/bash
#https://github.com/trufflesuite/ganache-cli


git clone https://github.com/trufflesuite/ganache-cli.git
cd ganache-cli

docker build --tag trufflesuite/ganache-cli .

#docker run --publish 8545:8545 trufflesuite/ganache-cli

#docker run --detach --publish 8545:8545 trufflesuite/ganache-cli:latest --accounts 10 --debug --host 0.0.0.0