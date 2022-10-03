FROM x11vnc/docker-desktop:22.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    libnotify4 \
    pcscd \
    pcsc-tools \
    usbutils \
    htop

ADD image/opt /opt
ADD image/tmp /tmp

ENV JAVA_HOME /opt/java/jre1.8.0_202
ENV PATH $PATH:$JAVA_HOME/bin

ENV SHODO_HOME /opt/shodo
ENV SHODO_TMP=/tmp/shodo

RUN mkdir /opt/java && tar -zxf $SHODO_TMP/jre-8u202-linux-x64.tar.gz -C /opt/java && \
    DEBIAN_FRONTEND=noninteractive dpkg -iR $SHODO_TMP/deb && \
    rm -rf $SHODO_TMP/*

EXPOSE 9000
