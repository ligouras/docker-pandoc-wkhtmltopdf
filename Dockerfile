FROM ubuntu:xenial
MAINTAINER Spyros Ligouras <spyros@ligouras.com>

RUN apt-get update
RUN apt-get install --no-install-recommends -y apt-utils
RUN apt-get install --no-install-recommends -y xvfb
RUN apt-get install --no-install-recommends -y pandoc
RUN apt-get install --no-install-recommends -y wkhtmltopdf

RUN apt-get -f install
RUN apt-get autoremove
RUN apt-get -y autoclean
RUN apt-get -y clean

COPY github-markdown.css /
COPY default-width.css /

COPY img2b64.sh /

CMD ["/bin/bash"]
