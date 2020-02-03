# EtherCore PoA Launcher

![Kim launch](./meme.jpg)

EtherCore PoA sidechain launcher

## Prerequisite

+ New vitural machine with Ubuntu 18.04 installed

Recommended spec)

AWS `m5a.xlarge` (4 Cores 16GB Ram) for beginners

## One-line installer

This command will initialize the poa sidechain on your server

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
