# Use a base image with Java installed
FROM openjdk:11-jdk

# Set the working directory inside the container
WORKDIR /app

# Copy the Java application JAR file to the container
COPY RealTimeClock.jar /app

# Set the entry point command to run the Java application
CMD ["java", "-jar", "RealTimeClock.jar"]
