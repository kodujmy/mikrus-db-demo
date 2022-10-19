FROM openjdk:17

EXPOSE 8080

WORKDIR /applications

COPY target/spring-boot-mikrus-demo-0.0.1-SNAPSHOT.jar /applications/mikrus-demo-application.jar

ENTRYPOINT ["java","-jar", "mikrus-demo-application.jar"]