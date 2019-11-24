FROM openjdk:8-jre-alpine

ENV ZOO_PORT=2181

EXPOSE $ZOO_PORT

ADD target/reservation-service.jar reservation-service.jar

ENTRYPOINT ["java","-jar","reservation-service.jar"]
