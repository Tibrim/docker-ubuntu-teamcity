FROM        tibrim/ubuntu-jdk8
MAINTAINER  Ian Richardson <ian.richardson@icloud.com>

ENV TEAMCITY_VER 9.1.6
ENV TEAMCITY_DATA_PATH /opt/teamcity-data

ADD https://download.jetbrains.com/teamcity/TeamCity-$TEAMCITY_VER.tar.gz /tmp/teamcity.tar.gz
RUN tar xf /tmp/teamcity.tar.gz -C /opt \
        && rm -f /tmp/teamcity.tar.gz \
        && mkdir -p $TEAMCITY_DATA_PATH

EXPOSE 8111

ENV SHELL /bin/bash

ENTRYPOINT ["/opt/TeamCity/bin/teamcity-server.sh", "run"]
CMD []
