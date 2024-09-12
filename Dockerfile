# Use a stable Tomcat 9 image version from Docker Hub
FROM tomcat:9.0.76-jdk8
# Remove default web applications and logs (optional)
RUN rm -rf /usr/local/tomcat/webapps/* && \
    rm -rf /usr/local/tomcat/logs/*

# Copy the WAR file into the Tomcat webapps directory
COPY /target/petclinic.war /usr/local/tomcat/webapps/

# Expose the port that Tomcat runs on
EXPOSE 8080

# Command to run Tomcat
CMD ["catalina.sh", "run"]

