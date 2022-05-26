FROM docker.io/eclipse-temurin:11-jre-alpine
ARG user=nobody
ARG group=nobody
ENV CATALINA_BASE=/usr/local/tomcat
RUN mkdir -p ${CATALINA_BASE}
RUN chown ${user}:${group} ${CATALINA_BASE}
USER ${user}

WORKDIR ${CATALINA_BASE}
COPY --chown=${user}:${group} "tomcat" "${CATALINA_BASE}"
ENV CATALINA_HOME=${CATALINA_BASE}
ENV CATALINA_TMPDIR=${CATALINA_HOME}/temp
ENV PATH="${CATALINA_HOME}/bin:${PATH}"
EXPOSE 8080

COPY --chown=${user}:${group} "java-maven-servlet" "${CATALINA_HOME}/webapps/java-maven-servlet"
CMD ["/bin/sh","./bin/catalina.sh","run"]