FROM openjdk:8-jdk-alpine
COPY target/assignment-*.jar /usr/bin
WORKDIR /usr/bin
ENV SPRING_PROFILE=h2
EXPOSE 8090
ENTRYPOINT java -jar -Dspring.profiles.active=${SPRING_PROFILE} assignment-*.jar
