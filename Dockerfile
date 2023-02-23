FROM ubuntu:20.04

RUN apt-get update && \
    DEBIAN_FRONTEND=non-interactive apt-get install -y \
    tftpd-hpa \
    vsftpd

VOLUME /tftpboot
VOLUME /ftp
EXPOSE 69/udp
EXPOSE 21/tcp
EXPOSE 22/tcp

COPY files/entrypoint.sh /
COPY files/vsftpd.conf /etc/

RUN mkdir -p /var/run/vsftpd/empty

ENTRYPOINT ["/entrypoint.sh"]
