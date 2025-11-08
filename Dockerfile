FROM eclipse-temurin:17-jdk
WORKDIR /app

COPY app.jar app.jar
COPY application-prod.properties application-prod.properties

CMD ["java", "-jar", "app.jar", "--spring.config.location=file:/app/application-prod.properties"]