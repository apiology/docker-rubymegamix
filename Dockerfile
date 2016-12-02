FROM apiology/ubuntu-ruby:latest
MAINTAINER apiology

#
# prereqs for scraping, bundles, fetching and debugging
#
RUN apt-get update && apt-get install -y xvfb git libicu-dev cmake libqt5webkit5-dev qt5-default netcat

ENV DISPLAY "localhost:0"

#
# I forget why this exists.
#
ADD cacert.pem /root/bin/cacert.pem

#
# Install latest node, as default Ubuntu version has an old cacerts bundle
#
RUN curl -sL https://deb.nodesource.com/setup_7.x | bash -

RUN apt-get install -y nodejs
