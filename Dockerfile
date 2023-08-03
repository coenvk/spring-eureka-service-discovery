FROM openjdk:17-jdk-alpine
EXPOSE 8761
ARG JAR_FILE=target/spring-eureka-service-discovery-1.0.0.jar
ADD ${JAR_FILE} app.jar
ADD target/dependency-jars dependency-jars
ENTRYPOINT ["java","-jar","/app.jar"]