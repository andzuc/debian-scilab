FROM andzuc/debian-base
LABEL maintainer "Andrea Zuccherelli <andrea@zuccherelli.net>"
RUN apt-get install -y \
    libgtk-3-0 \
    scilab \
    --no-install-recommends
RUN useradd -m scilab
USER scilab
ENV HOME /home/scilab
WORKDIR /home/scilab
RUN chmod a+w .
ENTRYPOINT ["/usr/bin/scilab"]
