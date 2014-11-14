FROM ubuntu:14.04

RUN dpkg --add-architecture i386 && \
    echo "deb http://archive.canonical.com/ $(lsb_release -sc) partner" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get -y install skype

RUN useradd skype -s /bin/bash -m

CMD sudo skype -c skype