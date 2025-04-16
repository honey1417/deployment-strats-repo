# Step 1: Use an official OpenJDK base image from Docker Hub
FROM openjdk:17-jdk-slim

# Step 2: Set the working directory inside the container
WORKDIR /app

# Step 3: Copy the Spring Boot application JAR file into the container
COPY target/harness-deployment-1.0-SNAPSHOT.jar /app/app.jar

# Step 4: Expose the port the app will be listening on
EXPOSE 9000

# Step 5: Command to run the Spring Boot application when the container starts
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
