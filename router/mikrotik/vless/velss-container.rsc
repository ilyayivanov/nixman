/container/config/set registry-url=https://dockerhub.timeweb.cloud tmpdir=/usb1/registry layer-dir=/usb1/registry/layer
/container/envs/add name=MIHOMO_ENV key=SRV1 value="vless://ab16d0a2-3196-4cfd-9104-c1be4e217eec@78.17.54.75:443?encryption=none&fp=chrome&pbk=JIhFoUKN3cgIgvgDn8BQnzGN5DT3QvR2COf5CIY7ACg&security=reality&sid=633b4eac2995&sni=www.tokmanni.fi&spx=%2F2XVT1kiaEsX1Hzi&type=tcp#xorhim-pdmt"
/container/add remote-image=dockerhub.timeweb.cloud/wiktorbgu/mihomo-mikrotik:latest interface=vless root-dir=/usb1/registry/docker/mihomo envlist=MIHOMO_ENV dns=8.8.8.8,8.8.4.4 start-on-boot=yes logging=yes name=mihomo
/container start [find name="mihomo"]

# View logs
/log/print where topics~"container"