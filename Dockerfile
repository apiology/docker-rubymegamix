# Use Alpine version compatible with building datadog agent as of 2023-07
FROM ruby:3.2-alpine3.17

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
