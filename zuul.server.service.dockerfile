FROM openjdk:8-alpine
RUN apk update && apk add bash
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
COPY zuul-api-gateway-server/target/zuul-api-gateway-server-0.0.1-SNAPSHOT.jar $PROJECT_HOME/zuul-api-gateway-server.jar
WORKDIR $PROJECT_HOME
CMD ["java", "-jar", "-Dspring.profiles.active=prod" ,"./zuul-api-gateway-server.jar"]