FROM openjdk:21
EXPOSE 8080
ADD target/dockerdelete.jar dockerdelete.jar
ENTRYPOINT ["java", "-jar", "/dockerdelete.jar"]