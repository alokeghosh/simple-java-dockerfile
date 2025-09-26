# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jdk-slim

# Set the working directory in the container
WORKDIR /usr/src/myapp

# Copy the current directory contents into the container at /usr/src/myapp
COPY . /usr/src/myapp

# Compile the Java source code
RUN javac src/App.java

# Define the command to run the application
CMD ["java", "App"]

