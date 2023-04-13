FROM openjdk:8-jdk-alpine
WORKDIR /app
COPY RealTimeClock.java /app
RUN javac RealTimeClock.java
CMD ["java", "RealTimeClock"]
