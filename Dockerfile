# Use a specific version of Tomcat as base image
FROM tomcat:10.1.25-openjdk version "21.0.3" 2024-04-16 LTS

# Expose port 8080 to access the application
EXPOSE 8080

# Copy the WAR file from the target directory of your Maven project to the Tomcat webapps directory
COPY target/maven-cloudaseem-app.war /home/ec2-user/tomcat/webapps
