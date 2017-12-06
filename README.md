# Raspberry Pi 1 Bind 9.11.2-r1 Docker Image With Alpine Linux

[![Build Status](https://travis-ci.org/offtechnologies/docker-arm32v6-bind.svg?branch=master)](travis-ci.org/offtechnologies/docker-arm32v6-bind)
[![This image on DockerHub](https://img.shields.io/docker/pulls/offtechnologies/docker-arm32v6-bind.svg)](https://hub.docker.com/r/offtechnologies/docker-arm32v6-bind/)
[![](https://images.microbadger.com/badges/version/offtechnologies/docker-arm32v6-bind.svg)](https://microbadger.com/images/offtechnologies/docker-arm32v6-bind "Get your own version badge on microbadger.com")
[![](https://images.microbadger.com/badges/image/offtechnologies/docker-arm32v6-bind.svg)](https://microbadger.com/images/offtechnologies/docker-arm32v6-bind "Get your own image badge on microbadger.com")


[offtechurl]: https://offtechnologies.gthub.io

[![offtechnologies](https://raw.githubusercontent.com/offtechnologies/offtechnologies.github.io/master/logo.png)][offtechurl]

Raspberry Pi 1 compatible Docker base image with Alpine Linux and Bind.

docker run -d --name bind --publish 53:53/udp -v /storage/docker/bind/:/etc/bind -v /storage/docker/bind/log:/var/log/named --restart=always offtechnologies/docker-arm32v6-bind:latest

## Credits
- [pstauffer/docker-bind](https://github.com/pstauffer/docker-bind)

## 0.0.0 - 2017-12-05
* work in progress
* Custom base image: Alpine Linux arm32v6 ver 3.7 with qemu-arm-static
* Tested on Raspberry Pi 1 Model B Rev 2 with  Raspbian 4.9.51-1+rpi3 (2017-10-22) armv6l GNU/Linux and Docker v17.10.0-ce (It looks Docker 17.11.0 has the problem. sudo apt install docker-ce=17.10.0~ce-0~raspbian)
