# Use an official Java runtime as the base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the built JAR from the host into the container
COPY target/todo-0.0.1-SNAPSHOT.jar app.jar

# Expose the port the app will run on
EXPOSE 9001

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

