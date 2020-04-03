FROM andzuc/debian-base
LABEL maintainer "Andrea Zuccherelli <andrea@zuccherelli.net>"
RUN apt-get install -y \
    scilab \
    curl \
    --no-install-recommends
RUN useradd -m scilab
USER scilab
ENV HOME /home/scilab
WORKDIR /home/scilab
VOLUME /home/scilab
ENTRYPOINT ["/usr/bin/scilab"]
