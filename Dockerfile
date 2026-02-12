FROM eclipse-temurin:21-jre
ARG artifact=target/login-app-0.0.1-SNAPSHOT.jar
WORKDIR /app
COPY pom.xml /app
COPY ${artifact} app.jar
CMD ["java","-jar","app.jar"]
