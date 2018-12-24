FROM alpine-s6
#FROM ivixq/alpine-s6-edge
MAINTAINER ivixq

ENV ZABBIX_HOSTNAME=mariadb

RUN apk add --update \
        mariadb \
        mariadb-client \
        pwgen && \   
    rm -rf /var/cache/apk/* 

COPY rootfs /

ENV TERM xterm

EXPOSE 3306

