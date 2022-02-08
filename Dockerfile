FROM openjdk:8
ADD target/sprint2sk-0.0.1-SNAPSHOT.war sprint2sk-0.0.1-SNAPSHOT.war
ENTRYPOINT ["java","-jar","sprint2sk-0.0.1-SNAPSHOT.war"]