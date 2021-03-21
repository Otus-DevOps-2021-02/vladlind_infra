#! /bin/bash

ssh yc-user@178.154.205.100 << EOF
  sudo apt update
  sudo apt install -y ruby-full ruby-bundler build-essential
  ruby -v
  bundler -v
EOF
