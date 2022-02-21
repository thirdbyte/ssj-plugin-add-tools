FROM ghcr.io/thirdbyte/ssj:latest

COPY tools.txt /tmp/
RUN apt-get -y update && apt-get -y dist-upgrade && \
   cat /tmp/tools.txt | DEBIAN_FRONTEND=noninteractive xargs apt-get -y install && \
   apt-get -y autoremove && apt-get -y clean && \
   rm -rf /var/lib/apt/lists/* && rm -rf /tmp/tools.txt

CMD ["/usr/bin/terminator"]
