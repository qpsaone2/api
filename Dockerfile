# Use the official Gradle image to create a build artifact.
FROM gradle:8.1.0-jdk17 AS build
WORKDIR /home/gradle/project
COPY . .
RUN gradle build

# Use the official OpenJDK image to run the application.
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /home/gradle/project/build/libs/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]