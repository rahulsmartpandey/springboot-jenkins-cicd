FROM adoptopenjdk:11-jre-hotspot
EXPOSE 8091
ADD target/ItemApp.jar ItemApp.jar
ENTRYPOINT ["java","-jar","ItemApp.jar"]