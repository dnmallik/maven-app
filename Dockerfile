# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /Users/mallik/.jenkins/workspace/java_pipeline/target/

# Copy the application JAR file to the container
COPY target/mallix1.war /Users/mallik/.jenkins/workspace/java_pipeline/target/maven-cloudaseem-app.war

# Make port 8080 available to the world outside this container
EXPOSE 8090

# Run the JAR file
ENTRYPOINT ["java", "-jar", "/mallix1.war"]