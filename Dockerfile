# Use OpenJDK base image
FROM openjdk:17-jdk-slim

# Add app JAR to container
COPY target/demo-0.0.1-SNAPSHOT.jar app.jar

# Run the JAR file
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]