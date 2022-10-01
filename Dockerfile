FROM ubuntu:22.04

COPY . .

RUN ./setup.sh

ENV JAVA_HOME /opt/java/jre1.8.0_202
ENV PATH $PATH:$JAVA_HOME/bin

ENTRYPOINT ["java","-jar","/opt/shodo/shodo.jar"]
