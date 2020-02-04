# EtherCore PoA Launcher

EtherCore PoA sidechain launcher

## Prerequisite

+ New vitural machine with Ubuntu 18.04 installed

Recommended spec)

AWS `m5a.xlarge` (4 Cores 16GB Ram) for beginners

## How to install

First, clone this repository and submodules

    $ git clone --recurse-submodules -j3 https://github.com/ethercore/poa-launcher

If you are setting up the clean vm from AWS, run `aws.sh` to install necessary dependencies

    $ ./aws.sh

And then run `init.sh` to install components at local environment

    $ ./init.sh

After initialized, you can start the services via `start.sh`

    $ ./start.sh

You can access the network dashboard at http://127.0.0.1:3000 and blockscout at http://127.0.0.1:4000

## PoA launcher composition

+ One parity node for block explorer & api service
+ Two geth PoA validator node
+ Blockscout open-source block explorer
+ eth-netstats poa network dashboard
+ eth-net-intelligence-api node stats reporting api

## Recommendation

If you are going to use this launcher for production, please change your wallet since the private keys are public from github!

## TO-DO

+ Add web wallet service
+ Add faucet service
+ Add mainnet-sidechain bridge service
