FROM centos:7
ENV RELEASE_PATH target/demo-apicurio-swarm.jar
RUN yum install -y \
    java-1.8.0-openjdk-headless \
  && yum clean all

WORKDIR /opt/demo-apicurio

ADD ${RELEASE_PATH} /opt/demo-apicurio

RUN groupadd -r duser -g 1001 \
    && useradd -u 1001 -r -g duser -d /opt/demo-apicurio/ -s /sbin/nologin -c "Docker image user" duser \
    && chown -R duser:duser /opt/demo-apicurio/ \
    && chgrp -R 0 /opt/demo-apicurio && chmod -R g=u /opt/demo-apicurio

USER 1001


EXPOSE 8080

ENV PORT_OFFSET=0
ENV LOGGING_LEVEL=INFO

CMD java -jar /opt/demo-apicurio/demo-apicurio-swarm.jar \
    -Dswarm.port.offset=${PORT_OFFSET} \
    -Dswarm.logging=${LOGGING_LEVEL}
