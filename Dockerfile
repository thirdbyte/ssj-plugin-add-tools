FROM ssj:latest

COPY packages.txt /tmp/
RUN apt-get -y update && apt-get -y dist-upgrade && \
   cat /tmp/packages.txt | DEBIAN_FRONTEND=noninteractive xargs apt-get -y install && \
   apt-get -y autoremove && apt-get -y clean && \
   rm -rf /var/lib/apt/lists/* && rm -rf /tmp/packages.txt

CMD ["/bin/bash"]
