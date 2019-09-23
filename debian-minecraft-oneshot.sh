#!/bin/bash
mkdir -p /opt/capsolcloud/logs
touch /opt/capsolcloud/logs/install-oneshot.log

if [ -z "$SCRIPT" ]
then 
    /opt/install-oneshot.log /bin/bash -c "$0 $*"
    exit 0
fi

apt update
apt upgrade -y
apt install qemu-guest-agent vim neofetch htop screen wget curl openjdk-8-jdk python python3 python-pip python3-pip

mkdir -p /opt/minecraft/server
wget "https://launcher.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar" -O /opt/minecraft/server/server.jar

