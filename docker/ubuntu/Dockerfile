FROM ubuntu:18.04

USER root

COPY choose_fastest_mirror.sh /tmp/choose_fastest_mirror.sh
RUN chmod +x /tmp/choose_fastest_mirror.sh
RUN /tmp/choose_fastest_mirror.sh
RUN cat /etc/apt/sources.list

RUN apt-get update

RUN apt-get install apt-utils \
  git wget curl locales ssh htop \
  unzip zip -y


# Install Qt6 build dependencies
COPY install_prerequisites.sh /tmp/install_prerequisites.sh
RUN chmod +x /tmp/install_prerequisites.sh
RUN /tmp/install_prerequisites.sh

# Tell Puppeteer to skip installing Chrome. We'll be using the installed package.
ENV PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true \
    PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium-browser \
    PATH="/data/node_modules/.bin:${PATH}"

# Set locale
RUN locale-gen en_US.UTF-8
ENV LC_CTYPE=en_US.UTF-8

WORKDIR /work_shared/


