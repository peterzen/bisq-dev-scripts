FROM debian:stable

ENV JAVA_HOME /usr/lib/jvm/openjdk-10.0.2
ENV JDK_FILENAME openjdk-10.0.2_linux-x64_bin.tar.gz
ENV JDK_URL https://download.java.net/java/GA/jdk10/10.0.2/19aef61b38124481863b1413dce1855f/13/openjdk-10.0.2_linux-x64_bin.tar.gz


RUN apt-get update && apt-get -y install curl

WORKDIR /root

RUN curl -L -O $JDK_URL && \
    mkdir -p $JAVA_HOME && \
    tar -zxf $JDK_FILENAME -C $JAVA_HOME --strip 1 && \
    rm $JDK_FILENAME && \
    update-alternatives --install /usr/bin/java java $JAVA_HOME/bin/java 2000 && \
    update-alternatives --install /usr/bin/javac javac $JAVA_HOME/bin/javac 2000 && \
    update-alternatives --set java $JAVA_HOME/bin/java && \
    update-alternatives --set javac $JAVA_HOME/bin/javac




# COPY ./ /root/


VOLUME /root

# WORKDIR /root

# RUN chmod +x scripts/install_java.sh && scripts/install_java.sh

# RUN chmod +x gradlew && ./gradlew
