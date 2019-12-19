FROM ubuntu:eoan

COPY entrypoint.sh /entrypoint.sh

RUN  apt update && apt upgrade -y
RUN  apt install -y \
  bash \
  git \
  hugo

ENTRYPOINT [ "/entrypoint.sh" ]
