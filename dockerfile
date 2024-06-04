# Use the official Tomcat image as the base image
FROM tomcat:8.5.71

# Download the student.war file from the specified URL
RUN wget -q https://s3-us-west-2.amazonaws.com/studentapi-cit/student.war -P /usr/local/tomcat/webapps/

# Start the Tomcat server
CMD ["/usr/local/tomcat/bin/catalina.sh", "run"]
