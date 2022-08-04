#
# Ejemplo de Dockerfile:
# Crear imagen de un servidor REST escrito en java/springboot
# 

FROM azul/zulu-openjdk:15

RUN locale-gen es_ES.UTF-8
ENV LANG es_ES.UTF-8  
ENV LANGUAGE es_ES:es  
ENV LC_ALL es_ES.UTF-8

RUN mkdir -p /var/log/selfweb
RUN mkdir -p /config

ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
COPY ./src/main/resources/application.properties /config/application.properties

ENTRYPOINT ["java","-jar","/app.jar"]
