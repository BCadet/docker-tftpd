FROM ubuntu:20.04

RUN apt-get update && \
    DEBIAN_FRONTEND=non-interactive apt-get install -y \
    tftpd-hpa

VOLUME /tftpboot
EXPOSE 69/udp

COPY files/entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]
