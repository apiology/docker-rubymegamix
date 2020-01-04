FROM ruby:2.7-alpine

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
      cmake

ENV DISPLAY "localhost:0"

#
# I forget why this exists.
#
ADD cacert.pem /root/bin/cacert.pem
