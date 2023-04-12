FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY index.java /app
RUN javac index.java
CMD ["java", "index"]

