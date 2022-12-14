FROM alpine:latest
USER root
ARG VERSION
RUN apk update
RUN apk add --no-cache coreutils
RUN apk add --no-cache curl
RUN apk add --no-cache wget
RUN apk add --no-cache bash
RUN apk add --no-cache tzdata
RUN wget https://releases.hashicorp.com/terraform/${VERSION}/terraform_${VERSION}_linux_amd64.zip
RUN unzip terraform_${VERSION}_linux_amd64.zip
RUN mv terraform /usr/bin/terraform

ENV LANG es_ES.UTF-8  
ENV LANGUAGE es_ES:es  
ENV LC_ALL es_ES.UTF-8
ENV TZ=Europe/Madrid


