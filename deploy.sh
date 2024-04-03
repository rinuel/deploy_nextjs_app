#!/bin/bash

export NVM_DIR=$HOME/.nvm;
. $NVM_DIR/nvm.sh;

cd /home/ec2-user/deploy_nextjs_app
git pull origin master
nvm use 20
yarn install &&
yarn build &&
pm2 restart next_hello_world_app
