FROM openjdk:21
EXPOSE 6000
ADD target/dockerdelete.jar dockerdelete.jar
ENTRYPOINT ["java", "-jar", "/dockerdelete.jar"]