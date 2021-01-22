# Use an official OpenJDK runtime as a parent image
FROM openjdk:8-jre-alpine

WORKDIR /opt
# Copy the fat jar into the container at /app
COPY target/demo-0.0.1-SNAPSHOT.jar  /opt/app.jar

# Make port 8080 available to the world outside this container
EXPOSE 8080

# Run jar file when the container launches
CMD ["java", "-jar", "app.jar"]