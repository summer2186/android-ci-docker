FROM ubuntu:14.04
MAINTAINER summer "summer@season.live"

RUN apt-get update
RUN apt-get install -y wget curl

# install Android SDK dependencies
RUN apt-get install -y openjdk-7-jre-headless lib32z1 lib32ncurses5 lib32bz2-1.0 g++-multilib
RUN apt-get install -y expect
RUN apt-get install -y --no-install-recommends maven

# get Android SDK
RUN wget -qO- "http://dl.google.com/android/android-sdk_r24.4.1-linux.tgz" | tar -zxv -C /opt/

# install gradle
RUN curl -s https://get.sdkman.io | bash
RUN sdk install gradle 2.14.1

RUN apt-get clean

VOLUME /workspace
WORKDIR /workspace
