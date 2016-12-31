# https://github.com/jantman/docker-debian-mongodb24
FROM debian:jessie

RUN /usr/bin/apt-get update && \
  /usr/bin/apt-get upgrade && \
  /usr/bin/apt-get install -y mongodb=1:2.4.10-5 && \
  /usr/bin/apt-get clean && \
  rm -rf /var/lib/apt/lists/*

COPY mongodb.conf /etc/mongodb.conf

EXPOSE 27017 28017
VOLUME ["/var/lib/mongodb"]
CMD ["mongod", "-f", "/etc/mongodb.conf"]
