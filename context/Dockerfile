FROM andzuc/debian-base
LABEL maintainer "Andrea Zuccherelli <andrea@zuccherelli.net>"
RUN apt-get install -y \
    scilab \
    --no-install-recommends
RUN useradd -m scilab
USER scilab
ENV HOME /home/scilab
WORKDIR /home/scilab
RUN chmod a+w .
ENTRYPOINT ["/usr/bin/scilab"]
