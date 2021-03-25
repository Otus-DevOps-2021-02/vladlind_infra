#! /bin/bash

ssh yc-user@178.154.200.216 << EOF
  cd /home/yc-user
  sudo apt -y install git
  git clone -b monolith https://github.com/express42/reddit.git
  cd reddit && bundle install
  puma -d
  ps aux | grep puma
  if [ $(curl -LI http://178.154.205.100:9292 -o /dev/null -w '%{http_code}\n' -s) == "200" ]; then echo "Service is OK"; fi
EOF
