FROM jenkins

MAINTAINER ngnono

USER root

# env
ENV MAVEN_HOME /opt/maven
ENV MAVEN_VERSION 3.3.9
ENV MAVEN_NAME apache-maven-$MAVEN_VERSION
ENV MAVEN_CHECKSUM 516923b3955b6035ba6b0a5b031fbd8b

# install wget
RUN apt-get install -y wget

# get maven 3.2.2
RUN wget --no-verbose -O /tmp/$MAVEN_NAME.tar.gz http://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/$MAVEN_NAME-bin.tar.gz

# verify checksum
RUN echo "$MAVEN_CHECKSUM /tmp/$MAVEN_NAME.tar.gz" | md5sum -c

# install maven
RUN tar xzf /tmp/$MAVEN_NAME.tar.gz -C /opt/
RUN ln -s /opt/$MAVEN_NAME /opt/maven
RUN ln -s $MAVEN_HOME/bin/mvn /usr/local/bin
RUN rm -f /tmp/$MAVEN_NAME.tar.gz


USER jenkins



