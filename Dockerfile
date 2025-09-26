# Stage 1: Build the Java application
FROM openjdk:17-jdk-slim as builder

# Set the working directory
WORKDIR /app

# Copy the source code into the container
COPY src/App.java .

# Compile the Java code
RUN javac App.java

# Stage 2: Create the final, lightweight image
FROM openjdk:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy the compiled class file from the builder stage
COPY --from=builder /app/App.class .

# Define the command to run the application

CMD ["java", "App"]

