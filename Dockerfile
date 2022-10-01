FROM x11vnc/docker-desktop:22.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    libnotify4 \
    pcscd \
    usbutils \
    htop

ADD resource/usr /usr
ADD resource/opt /opt
ADD resource/tmp /tmp

ENV TMP_DIR=/tmp/shodo

RUN mkdir /opt/java && tar -zxvf $TMP_DIR/jre-8u202-linux-x64.tar.gz -C /opt/java && \
    dpkg -i $TMP_DIR/deb/lib/libssl1.0.0_1.0.2n-1ubuntu5_amd64.deb && \
    dpkg -i $TMP_DIR/deb/lib/libgdk-pixbuf-xlib-2.0-0_2.40.2-2_amd64.deb && \
    dpkg -i $TMP_DIR/deb/lib/libgdk-pixbuf2.0-0_2.40.2-2_amd64.deb && \
    dpkg -i $TMP_DIR/deb/lib/libwxbase3.0-0v5_3.0.4+dfsg-15build1_amd64.deb && \
    dpkg -i $TMP_DIR/deb/lib/libwxgtk3.0-0v5_3.0.4+dfsg-3_amd64.deb && \
    dpkg -i $TMP_DIR/deb/Safesign_3.5.2_1804_x86_64.deb && \
    rm -rf $TMP_DIR/*

ENV SHODO_HOME /opt/shodo
ENV JAVA_HOME /opt/java/jre1.8.0_202
ENV PATH $PATH:$JAVA_HOME/bin

ENV DOCKER_CMD=docker_cmd

CMD ["$DOCKER_CMD"]

