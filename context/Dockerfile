FROM andzuc/debian-base
LABEL maintainer "Andrea Zuccherelli <andrea@zuccherelli.net>"

RUN apt-get install -y --no-install-recommends \
    default-jre \
    libxft2 \
    libtinfo5 \
    libjogl2-java \
    tk \
    curl \
    build-essential \
    && apt-get autoremove -y \
    && apt-get clean -y

ARG SCILAB_VER=6.1.0
ARG SCILAB_TAR="scilab-${SCILAB_VER}.bin.linux-x86_64.tar.gz"
RUN curl -s -L -o "/tmp/${SCILAB_TAR}" "http://www.scilab.org/download/${SCILAB_VER}/${SCILAB_TAR}" \
    && tar -C /opt -xvzf "/tmp/${SCILAB_TAR}" \
    && rm "/tmp/${SCILAB_TAR}" \
    && ln -s "scilab-${SCILAB_VER}" /opt/scilab \
    && useradd -m scilab

USER scilab
ENV HOME /home/scilab
WORKDIR /home/scilab
VOLUME /home/scilab
ENTRYPOINT ["/opt/scilab/bin/scilab"]
