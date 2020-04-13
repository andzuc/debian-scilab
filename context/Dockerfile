FROM andzuc/debian-base
LABEL maintainer "Andrea Zuccherelli <andrea@zuccherelli.net>"

# Debian packages: scilab scilab-doc
RUN apt-get install -y \
    libxft2 \
    curl \
    build-essential \
    --no-install-recommends

ARG SCILAB_VER=6.1.0
ARG SCILAB_TAR="scilab-${SCILAB_VER}.bin.linux-x86_64.tar.gz"
ADD "http://www.scilab.org/download/${SCILAB_VER}/${SCILAB_TAR}" /tmp/
RUN tar -C /opt -xvzf "/tmp/${SCILAB_TAR}" \
    && ln -s "scilab-${SCILAB_VER}" /opt/scilab \
    && useradd -m scilab

USER scilab
ENV HOME /home/scilab
WORKDIR /home/scilab
VOLUME /home/scilab
ENTRYPOINT ["/opt/scilab/bin/scilab"]
