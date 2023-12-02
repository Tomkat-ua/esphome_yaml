container=ESPHome
img=esphome/esphome
docker pull $img


docker container stop $container
docker container rm   $container

docker run -d  -it \
    --name $container  \
    --restart=always \
    -p 6052:6052  \
    -e ESPHOME_DASHBOARD_USE_PING=true  \
    --device /dev/ttyUSB0:/dev/ttyUSB0 \
    -v "${PWD}":/config  \
     $img


