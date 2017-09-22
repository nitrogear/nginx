## Nginx Dockerfile


This repository contains **Dockerfile** of [Nginx](http://nginx.org/) for [Docker](https://www.docker.com/)'s [automated build](https://registry.hub.docker.com/u/dockerfile/nginx/) published to the public [Docker Hub Registry](https://registry.hub.docker.com/).


### Base Docker Image

* [ubuntu:16.04](https://hub.docker.com/_/ubuntu/)


### Installation

1. Install [Docker](https://www.docker.com/).

2. Download [automated build](https://registry.hub.docker.com/u/nitrogear/nginx/) from public [Docker Hub Registry](https://registry.hub.docker.com/): `docker pull nitrogear/nginx`

   (alternatively, you can build an image from Dockerfile: `docker build -t="nitrogear/nginx" github.com/nitrogear/nginx`)


### Usage

    docker run -d -p 80:80 nitrogear/nginx

#### Attach persistent/shared directories

    docker run -d -p 80:80 -v <sites-enabled-dir>:/etc/nginx/conf.d -v <certs-dir>:/etc/nginx/certs -v <log-dir>:/var/log/nginx -v <html-dir>:/var/www/html nitrogear/nginx

After few seconds, open `http://<host>` to see the welcome page.
