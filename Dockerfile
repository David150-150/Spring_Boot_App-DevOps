FROM tomcat:8.5.87-jdk8-temurin-focal

# Remove Tomcat's default web applications
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy the Spring Boot WAR into Tomcat
COPY target/great-big-example-application-0.0.0.war /usr/local/tomcat/webapps/ROOT.war

# Tomcat listens on port 8080
EXPOSE 8080
