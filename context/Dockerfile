FROM debian:testing
LABEL maintainer "Andrea Zuccherelli <andrea@zuccherelli.net>"

RUN apt-get -y update \
    && apt-get install -y --no-install-recommends \
	       scilab \
	       curl \
	       build-essential \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && useradd -m scilab

USER scilab
ENV HOME /home/scilab
WORKDIR /home/scilab
VOLUME /home/scilab
ENTRYPOINT ["/usr/bin/scilab"]
