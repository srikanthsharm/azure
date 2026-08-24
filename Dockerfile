# Use Java 17 runtime
FROM mcr.microsoft.com/openjdk/jdk:17-ubuntu

# Copy the JAR file (built by Maven in the pipeline)
COPY target/*.jar app.jar

# Start the application
ENTRYPOINT ["java", "-jar", "/app.jar"]
