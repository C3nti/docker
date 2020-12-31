docker run \
  --restart always \
  --net=host \
  -d \
  --name=homebridge \
  -e PUID=1000 \
  -e PGID=140 \
  -e HOMEBRIDGE_CONFIG_UI=1 \
  -e HOMEBRIDGE_CONFIG_UI_PORT=8581 \
  -e TZ=Europe/Stockholm \
  -e PACKAGES=openssh,ffmpeg \
  -v /home/wmmaper/homebridge:/homebridge \
  homebridge:latest
