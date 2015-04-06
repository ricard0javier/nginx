FROM nginx:latest

MAINTAINER Ricardo Villanueva <villanueva.ricardo@gmail.com>

VOLUME /etc/nginx/conf.d

COPY default.conf /etc/nginx/conf.d/default.conf

RUN ["mkdir", "-p", "/data/nginx/cache"]