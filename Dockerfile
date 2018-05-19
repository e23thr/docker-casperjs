FROM node:8.11.2
MAINTAINER porpldev@gmail.com
ENV CASPERJS_VERSION=1.1.4

RUN apt-get update \
  && apt-get install -y python2.7 python-pip \
  && mkdir -p /usr/src \
  && npm install -g casperjs \
  && rm -rf /var/lib/apt/lists/*

# install requirements
#RUN apt-get install -y python2.7 python-pip
# RUN apt-get install build-essential g++ flex bison gperf ruby perl \
#   libsqlite3-dev libfontconfig1-dev libicu-dev libfreetype6 libssl-dev \
#   libpng-dev libjpeg-dev python libx11-dev libxext-dev

#RUN mkdir -p /usr/src

#install phantomjs
ADD phantomjs /usr/local/bin

# install casperjs (currently 1.1.4)
#RUN npm install -g casperjs

#WORKDIR /usr/src
#CMD ls /usr/local/bin
# CMD echo $PATH
#CMD casperjs

VOLUME /script

WORKDIR /script
# CMD ["ls", "/script"]
# EXPOSE port_num port_num ...
ENTRYPOINT ["casperjs"]