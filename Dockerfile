# Stage 1: Build the application using Maven
FROM maven:3.8.7-eclipse-temurin-17 AS builder

#set working directory
WORKDIR /app

#copy pom
COPY  pom.xml .
#downloa
RUN mvn dependency:go-offline

#copy source

COPY src ./src
RUN mvn clean package -DskipTests

#create runtime light
FROM eclipse-temurin:17-centos7
#set wkd
WORKDIR /app

#COPY
COPY --from=builder /app/target/*.jar  app.jar

EXPOSE 8080

ENTRYPOINT ["java", "-jar", "app.jar"]