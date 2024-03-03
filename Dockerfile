FROM maven:3.9.6-eclipse-temurin-21
EXPOSE 6000
ADD target/dockerdelete.jar dockerdelete.jar
ENTRYPOINT ["java", "-jar", "/dockerdelete.jar"]