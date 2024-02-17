# Use a smaller base image for running the application
FROM openjdk:11-jre-slim

WORKDIR /app

EXPOSE 8082
# Copy the JAR file from the Jenkins workspace
COPY target/day1MavenHandsOn-1.0-SNAPSHOT.jar .

# Specify the command to run on container start
CMD ["java", "-jar", "day1MavenHandsOn-1.0-SNAPSHOT.jar"]
