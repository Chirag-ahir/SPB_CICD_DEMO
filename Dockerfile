FROM openjdk:11
EXPOSE 8080
ADD target/spb_cicd-0.0.1-SNAPSHOT.jar spb_cicd-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/spb_cicd-0.0.1-SNAPSHOT.jar"]