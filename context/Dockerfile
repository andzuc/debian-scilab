FROM andzuc/debian-base
LABEL maintainer "Andrea Zuccherelli <andrea@zuccherelli.net>"

ARG SCILAB_VER=6.1.0
ARG SCILAB_TAR="scilab-${SCILAB_VER}.bin.linux-x86_64.tar.gz"
ADD "http://www.scilab.org/download/${SCILAB_VER}/${SCILAB_TAR}" /tmp/
RUN tar -C /opt -xvzf "/tmp/${SCILAB_TAR}" \
    && rm "/tmp/${SCILAB_TAR}" \
    && ln -s "scilab-${SCILAB_VER}" /opt/scilab \
    && useradd -m scilab

# Debian packages: scilab scilab-doc
# mesa: libglx-mesa0 mesa-utils
RUN apt-get install -y --no-install-recommends \
    default-jre \
    libxft2 \
    libtinfo5 \
    libjogl2-java \
    curl \
    build-essential \
    && apt-get autoremove -y \
    && apt-get clean -y

USER scilab
ENV HOME /home/scilab
WORKDIR /home/scilab
VOLUME /home/scilab
ENTRYPOINT ["/opt/scilab/bin/scilab"]
