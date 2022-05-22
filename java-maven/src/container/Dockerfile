FROM docker.io/eclipse-temurin:11-jre-alpine
RUN java --version & mkdir /usr/local/app
WORKDIR "/usr/local/app"
COPY "java-maven-*.jar" "/usr/local/app/lib/java-maven.jar"
ENTRYPOINT ["java", "-cp","/usr/local/app/lib/*", "Main", "container-entrypoint"]