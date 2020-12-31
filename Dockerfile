FROM gcr.io/distroless/java:11

COPY apiEncryptionKey.jks apiEncryptionKey.jks
COPY build/libs/configserver-0.0.1-SNAPSHOT.jar ConfigServer.jar

ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "ConfigServer.jar"]