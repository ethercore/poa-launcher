#!/bin/sh
sudo systemctl start parity geth geth2 netstats blockscout && cd eth-net-intelligence-api && pm2 start app.json app2.json app3.json
