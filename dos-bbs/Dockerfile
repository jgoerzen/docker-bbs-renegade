FROM jgoerzen/dosbox

MAINTAINER John Goerzen <jgoerzen@complete.org>

RUN apt-get update && \
    apt-get -y -u dist-upgrade && \
    apt-get -y --no-install-recommends install wget && \
    apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

COPY setup/ /tmp/setup/
RUN /tmp/setup/setup.sh && rm -r /tmp/setup.sh

EXPOSE 5901
CMD ["/usr/bin/supervisord", "-n", "-c", "/etc/supervisor/supervisord.conf"]

