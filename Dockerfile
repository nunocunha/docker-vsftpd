FROM ubuntu:24.04 AS installer

RUN apt-get -y update
RUN apt-get -y install --no-install-recommends --no-install-suggests vsftpd
RUN apt-get -y autoremove --purge

FROM installer

# Volume for public folder (anonymous login)
VOLUME /var/run/vsftpd/anonymous
# Volume for secure chroot
VOLUME /var/run/vsftpd/empty

ENTRYPOINT ["vsftpd"]
