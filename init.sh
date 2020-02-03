#!/bin/sh
sudo cp bin/* /usr/local/bin
sudo cp systemd/* /etc/systemd/system
geth --datadir nodes/geth --nousb init geth.json
geth --datadir nodes/geth2 --nousb init geth.json
cd eth-netstats && npm i && cd ..
cd eth-net-intelligence-api && npm i && cd ..
cp ws_secret.json eth-netstats
cp api-config/* eth-net-intelligence-api
cp dev.secret.exs blockscout/apps/explorer/config/dev.secret.exs
cd blockscout && cp apps/block_scout_web/config/dev.secret.exs.example apps/block_scout_web/config/dev.secret.exs && mix do deps.get, local.rebar --force, deps.compile, compile && mix do ecto.create, ecto.migrate && cd apps/block_scout_web/assets; npm install && node_modules/webpack/bin/webpack.js --mode production; cd - && cd apps/explorer && npm install; cd - && mix phx.digest && cd apps/block_scout_web && mix phx.gen.cert blockscout blockscout.local; cd -
