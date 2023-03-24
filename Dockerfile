FROM openjdk:11
EXPOSE 8080
ADD target/spb_cicd.jar spb_cicd.jar
ENTRYPOINT ["java","-jar","/spb_cicd.jar"]