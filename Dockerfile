FROM openjdk:8-jre-alpine

ENV SPRING_OUTPUT_ANSI_ENABLED=ALWAYS 

EXPOSE 8080

ADD build/libs/spring-music-1.0.jar /app.jar

CMD ["java", "-jar", "/app.jar", "${JAVA_OPTS}", "-Djava.security.egd=file:/dev/./urandom"]
