#!/bin/sh

mkdir -p volumes/final-project/config
rm -rf volumes/final-project/config/*
mkdir -p volumes/home-page/{config,html}
rm -rf volumes/home-page/{config,html}/*

docker pull nginx:alpine3.21
docker run --rm --name temp-nginx -d nginx:alpine3.21

docker cp temp-nginx:/etc/nginx/conf.d volumes/final-project/config
docker cp temp-nginx:/etc/nginx/nginx.conf volumes/final-project/config/nginx.conf

docker cp temp-nginx:/etc/nginx/conf.d volumes/home-page/config
docker cp temp-nginx:/etc/nginx/nginx.conf volumes/home-page/config/nginx.conf