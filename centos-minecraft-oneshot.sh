mkdir -p /opt/capsolcloud/logs
touch /opt/capsolcloud/logs/install-oneshot.log
{

mkdir -p /opt/minecraft/server
wget "https://launcher.mojang.com/v1/objects/3dc3d84a581f14691199cf6831b71ed1296a9fdf/server.jar" -O /opt/minecraft/server/server.jar

} >> /opt/capsolcloud/logs/install-oneshot.log
