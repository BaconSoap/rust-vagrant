#!/bin/sh

# base dependencies

## required for node
apt-get update
apt-get install -y curl

## add nodejs repo to apt
curl -sL https://deb.nodesource.com/setup | bash -

## gimme node, ruby, and the rest 
apt-get install -y nodejs build-essential vim git 

# rust
curl -s https://static.rust-lang.org/rustup.sh | sudo sh
