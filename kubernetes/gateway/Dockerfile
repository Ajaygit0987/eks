FROM openjdk:17-ea-11-jdk-slim-buster

# Expose required port and define log dir

EXPOSE 50000
VOLUME /var/log/gateway

# create a new user and group (to not run docker as a root user)
ENV USER app-gateway
RUN groupadd -g 999 $USER && useradd -r -u 999 -g $USER $USER



# Create required path and add jar files
RUN mkdir -p /srv/www/gateway/current
WORKDIR /srv/www/gateway/current
COPY ./cloud-gateway-0.0.1.jar /srv/www/gateway/current/
RUN mv cloud-gateway-0.0.1.jar gateway-exec.jar

COPY --chown=999 ./run.sh /srv/www/gateway/current/run.sh

CMD ["/bin/bash" , "run.sh" ]
