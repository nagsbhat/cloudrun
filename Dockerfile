# Use a lightweight Java image as the base
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the project JAR file
COPY target/*.jar app.jar

# Expose the port on which the application will run
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]