#!/bin/bash -x

export DEBIAN_FRONTEND=noninteractive \
  && apt-get update \
  && apt-get install -y -q \
  texlive-latex-base \
  texlive-fonts-recommended \
  texlive-latex-extra \
  texlive-xetex \
  libx11-xcb-dev \
  libxcomposite-dev \
  libxcursor-dev \
  libxdamage-dev \
  libxtst-dev \
  libxss-dev \
  libxrandr-dev \
  libasound-dev \
  libatk1.0-dev \
  libatk-bridge2.0-dev \
  libpango1.0-dev \
  libgtk-3-dev

# Install python3.6 and pip3
apt-get install -y python3 python3-pip
apt-get install -y chromium-browser

# Install NodeJS 16.x
curl -sL https://deb.nodesource.com/setup_16.x | bash -
apt-get install -y nodejs

# Install Pandoc 3.1.2
wget https://github.com/jgm/pandoc/releases/download/3.1.2/pandoc-3.1.2-1-amd64.deb
dpkg -i pandoc-3.1.2-1-amd64.deb

# Install pandoc-codeblock-include
pip3 install pandoc-codeblock-include

# Install mermaid-filter
npm i -g mermaid-filter --loglevel verbose
npm i -g @mermaid-js/mermaid-cli --loglevel verbose

wget https://github.com/lierdakil/pandoc-crossref/releases/download/v0.3.15.2a/pandoc-crossref-Linux.tar.xz
tar xvf ./pandoc-crossref-Linux.tar.xz -C /usr/bin/