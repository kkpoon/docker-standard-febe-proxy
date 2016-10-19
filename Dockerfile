FROM nginx:alpine

COPY default.conf /etc/nginx/conf.d/default.conf

RUN mkdir /certbot.well-known

VOLUME /certbot.well-known
VOLUME /etc/letsencrypt
VOLUME /etc/ssl/certs
