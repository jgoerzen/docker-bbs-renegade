FROM jgoerzen/dosbox

MAINTAINER John Goerzen <jgoerzen@complete.org>

#RUN apt-get update && \
#    apt-get -y -u dist-upgrade && \
#    apt-get -y --no-install-recommends install wget ca-certificates && \
#    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY setup/ /tmp/setup/
RUN /tmp/setup/download.sh

COPY supervisor/ /etc/supervisor/conf.d/
RUN /tmp/setup/setup.sh && rm -r /tmp/setup

EXPOSE 5901 23
CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]

VOLUME ["/dos/drive_d"]

