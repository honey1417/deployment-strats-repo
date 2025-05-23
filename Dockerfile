# simple-java-ci-cd-app/Dockerfile

# Use a lightweight official OpenJDK runtime image
FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

COPY target/demo-app-1.0.0-SNAPSHOT.jar app.jar

# Expose the port that the Spring Boot application listens on
EXPOSE 8080

# Define the command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]