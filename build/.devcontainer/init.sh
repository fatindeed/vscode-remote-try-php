#!/usr/bin/env bash

cd /host-home

if [ -d .ssh ]; then
    mkdir -p ~/.ssh;
    cp -rf .ssh/. ~/.ssh/
    chmod -R g-rwx,o-rwx ~/.ssh
fi

if [ ! -z "${TIMEZONE}" ]; then
    sudo cp "/usr/share/zoneinfo/${TIMEZONE}" /etc/localtime
    echo "${TIMEZONE}" | sudo tee /etc/timezone
fi