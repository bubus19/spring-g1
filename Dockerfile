FROM registry.opensource.zalan.do/stups/openjdk:8-54
MAINTAINER Zalando SAP Competence Center DevTeam, arkadiusz.malolepszy@zalando.de
VOLUME /tmp
ADD build/libs/gs-spring-boot-docker-0.1.0.jar gs-spring-boot-docker-0.1.0.jar
EXPOSE 8080
ENTRYPOINT exec java -Djava.security.egd=file:/dev/./urandom -jar gs-spring-boot-docker-0.1.0.jar