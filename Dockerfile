FROM adoptopenjdk/openjdk11:alpine-jre

COPY wait-for.sh wait-for.sh
COPY apiEncryptionKey.jks apiEncryptionKey.jks
COPY build/libs/configserver-0.0.1-SNAPSHOT.jar ConfigServer.jar

#ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "ConfigServer.jar"]
ENV RABBIT_HOST = ""
ENTRYPOINT ["sh", "-c", "echo 'waiting for 20 seconds for '${RABBIT_HOST:localhost}':5672 to be accessable before starting application' && /wait-for.sh ''${RABBIT_HOST:localhost}':5672' -- java -Djava.security.egd=file:/dev/./urandom -jar ConfigServer.jar"]
