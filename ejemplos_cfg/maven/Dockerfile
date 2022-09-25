# Crear imagen del servidor SelfWeb (selfwebspringboot) 

FROM azul/zulu-openjdk:15

RUN locale-gen es_ES.UTF-8
ENV LANG es_ES.UTF-8  
ENV LANGUAGE es_ES:es  
ENV LC_ALL es_ES.UTF-8

RUN mkdir -p /var/log/selfweb
RUN mkdir -p /config

COPY target/*.jar app.jar

ENTRYPOINT ["java","-jar","/app.jar"]
