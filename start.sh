#!/bin/bash

if [ -z "$(ls -A /opt/sandstorm)" ]; then
  echo "Installing Sandstorm..."
  curl https://install.sandstorm.io/ > install.sh && REPORT=no bash install.sh -d -u -e
fi

echo "Launching Sandstorm..."

/opt/sandstorm/sandstorm start && \
  tail -f /opt/sandstorm/var/log/sandstorm.log & sleep infinity
