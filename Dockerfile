# Stage 1: Build the Java application
FROM openjdk:17-jdk-slim as builder

# Set the working directory
WORKDIR /app

# Copy the source code into the container
COPY App.java .

# Compile the Java code
RUN javac App.java

FROM openjdk:17-jdk-slim

WORKDIR /app

COPY bin/App.class .

CMD ["java", "App"]
