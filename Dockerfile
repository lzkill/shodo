FROM x11vnc/docker-desktop:22.04

RUN apt-get update && apt-get install -y libnotify4 pcscd usbutils

COPY ./ /tmp/

RUN dpkg -i /tmp/deb/lib/libssl1.0.0_1.0.2n-1ubuntu5_amd64.deb && \
    dpkg -i /tmp/deb/lib/libgdk-pixbuf-xlib-2.0-0_2.40.2-2_amd64.deb && \
    dpkg -i /tmp/deb/lib/libgdk-pixbuf2.0-0_2.40.2-2_amd64.deb && \
    dpkg -i /tmp/deb/lib/libwxbase3.0-0v5_3.0.4+dfsg-15build1_amd64.deb && \
    dpkg -i /tmp/deb/lib/libwxgtk3.0-0v5_3.0.4+dfsg-3_amd64.deb && \
    dpkg -i /tmp/deb/Safesign_3.5.2_1804_x86_64.deb && \
    rm -rf /tmp/deb/ && \
    mkdir /opt/shodo /opt/java && \
    mv /tmp/shodo.jar /opt/shodo && \
    tar -zxvf /tmp/jre-8u202-linux-x64.tar.gz -C /opt/java

ENV JAVA_HOME /opt/java/jre1.8.0_202
ENV PATH $PATH:$JAVA_HOME/bin
