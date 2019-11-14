FROM ubuntu:xenial
MAINTAINER Spyros Ligouras <spyros@ligouras.com>

RUN apt-get update
RUN apt-get install --no-install-recommends -y xvfb
RUN apt-get install --no-install-recommends -y pandoc
RUN apt-get install --no-install-recommends -y wkhtmltopdf

CMD ["/bin/bash"]
