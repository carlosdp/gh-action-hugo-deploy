FROM ubuntu:xenial

COPY entrypoint.sh /entrypoint.sh

RUN  apt update && apt upgrade -y
RUN  apt install -y \
  bash \
  git \
  wget
RUN wget -O hugo.deb https://github.com/gohugoio/hugo/releases/download/v0.64.1/hugo_extended_0.80.0_Linux-64bit.deb
RUN dpkg -i hugo.deb

ENTRYPOINT [ "/entrypoint.sh" ]
