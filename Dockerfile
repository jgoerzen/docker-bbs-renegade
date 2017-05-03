FROM jgoerzen/dos-bbs

MAINTAINER John Goerzen <jgoerzen@complete.org>

RUN mkdir /tmp/setup
COPY setup/sums /tmp/setup
# Do the download ASAP so we don't hit the download sites overly hard
COPY setup/download.sh /tmp/setup/download.sh
RUN /tmp/setup/download.sh

COPY setup/ /tmp/setup/
RUN /tmp/setup/setup.sh && rm -r /tmp/setup

VOLUME ["/dos/drive_g"]
EXPOSE 5901 23
CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]

