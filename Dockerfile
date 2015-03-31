FROM nginx:latest

MAINTAINER Ricardo Villanueva <villanueva.ricardo@gmail.com>

COPY default.conf /etc/nginx/conf.d/default.conf

RUN ["mkdir", "-p", "/data/nginx/cache"]