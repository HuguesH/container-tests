FROM docker.io/eclipse-temurin:11-jdk
RUN pwd & mkdir src
COPY ./src/Main.java ./src
RUN javac -verbose ./src/Main.java
#RUN java -cp "./src" Main test
ENTRYPOINT ["java", "-cp", "./src", "Main", "container-entrypoint"]