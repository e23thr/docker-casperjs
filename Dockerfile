FROM node:8.11.2

MAINTAINER porpldev@gmail.com

ENV CASPERJS_VERSION=1.1.4
ENV PHANTOMJS_VERSION=2.1.1

RUN apt-get update \
  && apt-get install -y python2.7 python-pip \
  && mkdir -p /usr/src \
  && npm install -g casperjs \
  && rm -rf /var/lib/apt/lists/*

#add phantomjs binary to docker image
ADD phantomjs /usr/local/bin

# CMD ["ls", "/script"]
# EXPOSE port_num port_num ...

VOLUME /script

WORKDIR /script
ENTRYPOINT ["casperjs"]