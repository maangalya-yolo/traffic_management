FROM eclipse-temurin:21-jre-jammy

WORKDIR /app

COPY backend/target/traffic-management-*.jar app.jar

EXPOSE 8080

USER 1001

ENTRYPOINT ["java", "-jar", "/app/app.jar"]
