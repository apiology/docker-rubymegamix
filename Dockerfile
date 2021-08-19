ARG DOCKER_TAG=latest
FROM circleci/ruby:${DOCKER_TAG}
MAINTAINER apiology

RUN sudo apt-get install -y libicu-dev cmake
