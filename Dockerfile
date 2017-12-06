FROM debian:jessie
MAINTAINER tilldettmering@gmail.com

# Install pygments (for syntax highlighting) 
RUN apt-get -qq update && rm -rf /var/lib/apt/lists/*

# Download and install hugo
ENV HUGO_VERSION 0.31.1
ENV HUGO_BINARY hugo_${HUGO_VERSION}_Linux-64bit.deb

ADD https://github.com/spf13/hugo/releases/download/v${HUGO_VERSION}/${HUGO_BINARY} /tmp/hugo.deb
RUN dpkg -i /tmp/hugo.deb \
	&& rm /tmp/hugo.deb