FROM alpine:3.16.2
USER root

ENV LANG es_ES.UTF-8  
ENV LANGUAGE es_ES:es  
ENV LC_ALL es_ES.UTF-8
ENV TZ=Europe/Madrid

RUN apk update
RUN apk add --no-cache coreutils
RUN apk add --no-cache bash
RUN apk add --no-cache tzdata
RUN apk add --no-cache maven
RUN apk add --no-cache git
RUN apk add --no-cache curl
RUN apk add --no-cache openssh-client
RUN wget "http://dl-cdn.alpinelinux.org/alpine/v3.16/community/x86_64/xmlstarlet-1.6.1-r0.apk"
RUN apk add --no-cache xmlstarlet-1.6.1-r0.apk


