FROM ruby:2.4-alpine
MAINTAINER apiology

#
# prereqs for scraping, bundles, fetching and debugging
#
RUN apk update && \
    apk add \
      netcat-openbsd \
      py-pip \
      nodejs \
      xvfb \
      git \
      icu-dev \
      cmake \
      qt5-qtbase-dev \
      qt5-qtwebkit-dev

ENV QMAKE /usr/lib/qt5/bin/qmake

ENV DISPLAY "localhost:0"

#
# I forget why this exists.
#
ADD cacert.pem /root/bin/cacert.pem
